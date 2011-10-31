# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{spree_yandex_market}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.date = %q{2011-04-27}
  s.homepage = %q{https://github.com/romul/spree-yandex-market}
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.8.7")
  s.requirements = ["none"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Export products to Yandex.Market}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_core>, [">= 0.50.0"])
      s.add_runtime_dependency(%q<nokogiri>, ["~> 1.4.0"])
    else
      s.add_dependency(%q<spree_core>, [">= 0.50.0"])
      s.add_dependency(%q<nokogiri>, ["~> 1.4.0"])
    end
  else
    s.add_dependency(%q<spree_core>, [">= 0.50.0"])
    s.add_dependency(%q<nokogiri>, ["~> 1.4.0"])
  end
end
