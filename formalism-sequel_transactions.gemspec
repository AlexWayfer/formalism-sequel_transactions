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

	github_uri = "https://github.com/AlexWayfer/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.6', '< 4'

	spec.add_runtime_dependency 'formalism', '~> 0.5.0'
	spec.add_runtime_dependency 'sequel', '~> 5.0'
end
