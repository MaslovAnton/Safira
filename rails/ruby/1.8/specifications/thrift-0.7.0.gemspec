# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thrift}
  s.version = "0.7.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2.0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thrift Developers"]
  s.date = %q{2011-08-16}
  s.description = %q{Ruby bindings for the Apache Thrift RPC system}
  s.email = ["dev@thrift.apache.org"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["ext/extconf.rb"]
  s.homepage = %q{http://thrift.apache.org}
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{thrift}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby bindings for the Apache Thrift RPC system}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
