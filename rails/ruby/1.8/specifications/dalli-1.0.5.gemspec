# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{dalli}
  s.version = "1.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mike Perham"]
  s.date = %q{2011-06-01}
  s.description = %q{High performance memcached client for Ruby}
  s.email = %q{mperham@gmail.com}
  s.files = ["test/abstract_unit.rb", "test/benchmark_test.rb", "test/helper.rb", "test/memcached_mock.rb", "test/test_active_support.rb", "test/test_compatibility.rb", "test/test_dalli.rb", "test/test_encoding.rb", "test/test_failover.rb", "test/test_network.rb", "test/test_ring.rb", "test/test_sasl.rb", "test/test_session_store.rb"]
  s.homepage = %q{http://github.com/mperham/dalli}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{High performance memcached client for Ruby}
  s.test_files = ["test/abstract_unit.rb", "test/benchmark_test.rb", "test/helper.rb", "test/memcached_mock.rb", "test/test_active_support.rb", "test/test_compatibility.rb", "test/test_dalli.rb", "test/test_encoding.rb", "test/test_failover.rb", "test/test_network.rb", "test/test_ring.rb", "test/test_sasl.rb", "test/test_session_store.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<mocha>, [">= 0"])
      s.add_development_dependency(%q<rails>, [">= 0"])
      s.add_development_dependency(%q<memcache-client>, [">= 1.8.5"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<mocha>, [">= 0"])
      s.add_dependency(%q<rails>, [">= 0"])
      s.add_dependency(%q<memcache-client>, [">= 1.8.5"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<mocha>, [">= 0"])
    s.add_dependency(%q<rails>, [">= 0"])
    s.add_dependency(%q<memcache-client>, [">= 1.8.5"])
  end
end
