# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spree_online_support}
  s.version = "0.50.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Service & Consulting"]
  s.date = %q{2011-04-27}
  s.homepage = %q{https://github.com/secoint/spree_online_support}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Adds integration with online support services, like zopim.com}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 0.40.3"])
    else
      s.add_dependency(%q<spree_core>, [">= 0.40.3"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 0.40.3"])
  end
end
