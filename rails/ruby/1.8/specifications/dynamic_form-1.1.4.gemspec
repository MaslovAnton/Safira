# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dynamic_form}
  s.version = "1.1.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Joel Moss"]
  s.date = %q{2011-04-08}
  s.description = %q{DynamicForm holds a few helper methods to help you deal with your Rails3 models. It includes the stripped out methods from Rails 2; error_message_on and error_messages_for. It also brings in the functionality of the custom-err-messages plugin, which provides more flexibility over your model error messages.}
  s.email = %q{joel@developwithstyle.com}
  s.files = ["test/dynamic_form_i18n_test.rb", "test/dynamic_form_test.rb", "test/test_helper.rb"]
  s.homepage = %q{http://codaset.com/joelmoss/dynamic-form}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{DynamicForm holds a few helper methods to help you deal with your Rails3 models}
  s.test_files = ["test/dynamic_form_i18n_test.rb", "test/dynamic_form_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<mocha>, [">= 0"])
    else
      s.add_dependency(%q<mocha>, [">= 0"])
    end
  else
    s.add_dependency(%q<mocha>, [">= 0"])
  end
end
