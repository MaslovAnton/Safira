# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{evernote}
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Chris Sepic"]
  s.date = %q{2012-01-23 00:00:00.000000000Z}
  s.description = %q{A high level wrapper around Evernote's Thrift-generated ruby code. It bundles up Evernote's thrift-generated code and creates some simple wrapper classes.}
  s.email = ["chris.sepic@gmail.com"]
  s.homepage = %q{http://github.com/cgs/evernote}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{High level wrapper for the Evernote API}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thrift_client>, [">= 0.8.1"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
      s.add_development_dependency(%q<yard>, [">= 0"])
    else
      s.add_dependency(%q<thrift_client>, [">= 0.8.1"])
      s.add_dependency(%q<rspec>, [">= 0"])
      s.add_dependency(%q<yard>, [">= 0"])
    end
  else
    s.add_dependency(%q<thrift_client>, [">= 0.8.1"])
    s.add_dependency(%q<rspec>, [">= 0"])
    s.add_dependency(%q<yard>, [">= 0"])
  end
end
