# frozen_string_literal: true

require_relative 'sequel_transactions/version'

require 'sequel'

module Formalism
	## Main module which should be included into base form
	module SequelTransactions
		def initialize(*)
			@ran_times = 0

			super
		end

		def run
			return unless runnable

			result = db_connection.in_transaction? ? run_without_transaction.last : run_with_transaction

			Form::Outcome.new(errors, result)
		end

		def before_retry
			nested_forms.each_value(&__method__)

			@filled_fields_and_nested_forms.clear

			fill_fields_and_nested_forms
		end

		private

		TRANSACTION_OPTIONS = {
			isolation: :serializable,
			retry_on: [Sequel::SerializationFailure].freeze
		}.freeze

		def run_with_transaction
			db_connection.transaction(**TRANSACTION_OPTIONS) do
				db_connection.after_commit { after_db_transaction_commit }

				is_valid, result = run_without_transaction

				raise Sequel::Rollback unless is_valid

				result
			end
		end

		def run_without_transaction
			before_retry if (@ran_times += 1) > 1

			is_valid = valid?

			[is_valid, (execute if is_valid)]
		end
	end
end
