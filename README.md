# Formalism Sequel Transactions

[![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/AlexWayfer/formalism-sequel_transactions?style=flat-square)](https://cirrus-ci.com/github/AlexWayfer/formalism-sequel_transactions)
[![Codecov branch](https://img.shields.io/codecov/c/github/AlexWayfer/formalism-sequel_transactions/main.svg?style=flat-square)](https://codecov.io/gh/AlexWayfer/formalism-sequel_transactions)
[![Code Climate](https://img.shields.io/codeclimate/maintainability/AlexWayfer/formalism-sequel_transactions.svg?style=flat-square)](https://codeclimate.com/github/AlexWayfer/formalism-sequel_transactions)
[![Depfu](https://img.shields.io/depfu/AlexWayfer/benchmark_toys?style=flat-square)](https://depfu.com/repos/github/AlexWayfer/formalism-sequel_transactions)
[![Inline docs](https://inch-ci.org/github/AlexWayfer/formalism-sequel_transactions.svg?branch=main)](https://inch-ci.org/github/AlexWayfer/formalism-sequel_transactions)
[![Gem](https://img.shields.io/gem/v/formalism-sequel_transactions.svg?style=flat-square)](https://rubygems.org/gems/formalism-sequel_transactions)
[![License](https://img.shields.io/github/license/AlexWayfer/formalism-sequel_transactions.svg?style=flat-square)](LICENSE.txt)

[Sequel](https://sequel.jeremyevans.net/) transaction
inside [Formalism](https://github.com/AlexWayfer/formalism) forms.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'formalism-sequel_transactions'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install formalism-sequel_transactions
```

## Usage

```ruby
require 'formalism/sequel_transactions'

module MyProject
  module Forms
    class Base < Formalism::Form
      include Formalism::SequelTransactions

      private

      ## This is an example, but definition of this method is required
      def db_connection
        MyProject::Application.db_connection
      end

      ## This is an example and not required
      def after_db_transaction_commit
        send_mails!
      end
    end
  end
end
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

Then, run `toys rspec` to run the tests.

To install this gem onto your local machine, run `toys gem install`.

To release a new version, run `toys gem release %version%`.
See how it works [here](https://github.com/AlexWayfer/gem_toys#release).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/AlexWayfer/formalism-sequel_transactions).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
