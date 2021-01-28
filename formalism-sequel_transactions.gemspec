# frozen_string_literal: true

require_relative 'lib/formalism/sequel_transactions/version'

Gem::Specification.new do |spec|
	spec.name        = 'formalism-sequel_transactions'
	spec.version     = Formalism::SequelTransactions::VERSION
	spec.authors     = ['Alexander Popov']
	spec.email       = ['alex.wayfer@gmail.com']

	spec.summary     = 'Sequel transactions inside Formalism forms'
	spec.description = <<~DESC
		Sequel transactions inside Formalism forms.
	DESC
	spec.license = 'MIT'

	spec.required_ruby_version = '>= 2.5'

	source_code_uri = 'https://github.com/AlexWayfer/formalism-sequel_transactions'

	spec.homepage = source_code_uri

	spec.metadata['source_code_uri'] = source_code_uri

	spec.metadata['homepage_uri'] = spec.homepage

	spec.metadata['changelog_uri'] =
		'https://github.com/AlexWayfer/formalism-sequel_transactions/blob/master/CHANGELOG.md'

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.add_runtime_dependency 'formalism', '~> 0.3.0'
	spec.add_runtime_dependency 'sequel', '~> 5.0'

	spec.add_development_dependency 'pry-byebug', '~> 3.9'

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'gem_toys', '~> 0.4.0'
	spec.add_development_dependency 'toys', '~> 0.11.3'

	spec.add_development_dependency 'codecov', '~> 0.4.2'
	spec.add_development_dependency 'rspec', '~> 3.9'
	spec.add_development_dependency 'simplecov', '~> 0.19.0'

	spec.add_development_dependency 'rubocop', '~> 1.6'
	spec.add_development_dependency 'rubocop-performance', '~> 1.0'
	spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
