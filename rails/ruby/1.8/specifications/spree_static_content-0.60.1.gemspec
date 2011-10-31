# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spree_static_content}
  s.version = "0.60.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Berkenbosch", "Roman Smirnov"]
  s.date = %q{2011-06-25}
  s.description = %q{Extention to manage the static pages for your Spree shop.}
  s.files = ["spec/models/page_spec.rb", "spec/spec_helper.rb", "spec/controllers/content_controller_spec.rb", "spec/controllers/admin/pages_controller_spec.rb"]
  s.homepage = %q{http://github.com/spree/spree-static-content}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Extention to manage the static pages for your Spree shop.}
  s.test_files = ["spec/models/page_spec.rb", "spec/spec_helper.rb", "spec/controllers/content_controller_spec.rb", "spec/controllers/admin/pages_controller_spec.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 0.60.0"])
      s.add_runtime_dependency(%q<spree_editor>, [">= 0.50.0"])
      s.add_runtime_dependency(%q<formtastic>, ["~> 1.2.3"])
    else
      s.add_dependency(%q<spree_core>, [">= 0.60.0"])
      s.add_dependency(%q<spree_editor>, [">= 0.50.0"])
      s.add_dependency(%q<formtastic>, ["~> 1.2.3"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 0.60.0"])
    s.add_dependency(%q<spree_editor>, [">= 0.50.0"])
    s.add_dependency(%q<formtastic>, ["~> 1.2.3"])
  end
end
