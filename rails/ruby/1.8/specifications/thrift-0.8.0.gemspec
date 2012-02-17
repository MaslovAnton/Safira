# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{thrift}
  s.version = "0.8.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Thrift Developers"]
  s.date = %q{2011-11-26}
  s.description = %q{Ruby bindings for the Apache Thrift RPC system}
  s.email = ["dev@thrift.apache.org"]
  s.extensions = ["ext/extconf.rb"]
  s.files = ["test/debug_proto/gen-rb/debug_proto_test_constants.rb", "test/debug_proto/gen-rb/debug_proto_test_types.rb", "test/debug_proto/gen-rb/empty_service.rb", "test/debug_proto/gen-rb/inherited.rb", "test/debug_proto/gen-rb/reverse_order_service.rb", "test/debug_proto/gen-rb/service_for_exception_with_a_map.rb", "test/debug_proto/gen-rb/srv.rb", "spec/base_protocol_spec.rb", "spec/base_transport_spec.rb", "spec/binary_protocol_accelerated_spec.rb", "spec/binary_protocol_spec.rb", "spec/binary_protocol_spec_shared.rb", "spec/client_spec.rb", "spec/compact_protocol_spec.rb", "spec/exception_spec.rb", "spec/gen-rb/nonblocking_service.rb", "spec/gen-rb/thrift_spec_constants.rb", "spec/gen-rb/thrift_spec_types.rb", "spec/http_client_spec.rb", "spec/mongrel_http_server_spec.rb", "spec/nonblocking_server_spec.rb", "spec/processor_spec.rb", "spec/serializer_spec.rb", "spec/server_socket_spec.rb", "spec/server_spec.rb", "spec/socket_spec.rb", "spec/socket_spec_shared.rb", "spec/spec_helper.rb", "spec/struct_spec.rb", "spec/ThriftSpec.thrift", "spec/types_spec.rb", "spec/union_spec.rb", "spec/unix_socket_spec.rb", "benchmark/benchmark.rb", "benchmark/Benchmark.thrift", "benchmark/client.rb", "benchmark/gen-rb/benchmark_constants.rb", "benchmark/gen-rb/benchmark_service.rb", "benchmark/gen-rb/benchmark_types.rb", "benchmark/server.rb", "benchmark/thin_server.rb", "ext/extconf.rb"]
  s.homepage = %q{http://thrift.apache.org}
  s.licenses = ["Apache 2.0"]
  s.require_paths = ["lib", "ext"]
  s.rubyforge_project = %q{thrift}
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Ruby bindings for Apache Thrift}
  s.test_files = ["test/debug_proto/gen-rb/debug_proto_test_constants.rb", "test/debug_proto/gen-rb/debug_proto_test_types.rb", "test/debug_proto/gen-rb/empty_service.rb", "test/debug_proto/gen-rb/inherited.rb", "test/debug_proto/gen-rb/reverse_order_service.rb", "test/debug_proto/gen-rb/service_for_exception_with_a_map.rb", "test/debug_proto/gen-rb/srv.rb", "spec/base_protocol_spec.rb", "spec/base_transport_spec.rb", "spec/binary_protocol_accelerated_spec.rb", "spec/binary_protocol_spec.rb", "spec/binary_protocol_spec_shared.rb", "spec/client_spec.rb", "spec/compact_protocol_spec.rb", "spec/exception_spec.rb", "spec/gen-rb/nonblocking_service.rb", "spec/gen-rb/thrift_spec_constants.rb", "spec/gen-rb/thrift_spec_types.rb", "spec/http_client_spec.rb", "spec/mongrel_http_server_spec.rb", "spec/nonblocking_server_spec.rb", "spec/processor_spec.rb", "spec/serializer_spec.rb", "spec/server_socket_spec.rb", "spec/server_spec.rb", "spec/socket_spec.rb", "spec/socket_spec_shared.rb", "spec/spec_helper.rb", "spec/struct_spec.rb", "spec/ThriftSpec.thrift", "spec/types_spec.rb", "spec/union_spec.rb", "spec/unix_socket_spec.rb", "benchmark/benchmark.rb", "benchmark/Benchmark.thrift", "benchmark/client.rb", "benchmark/gen-rb/benchmark_constants.rb", "benchmark/gen-rb/benchmark_service.rb", "benchmark/gen-rb/benchmark_types.rb", "benchmark/server.rb", "benchmark/thin_server.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>, [">= 0"])
      s.add_development_dependency(%q<rspec>, ["= 1.3.2"])
      s.add_development_dependency(%q<mongrel>, [">= 0"])
    else
      s.add_dependency(%q<rake>, [">= 0"])
      s.add_dependency(%q<rspec>, ["= 1.3.2"])
      s.add_dependency(%q<mongrel>, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>, [">= 0"])
    s.add_dependency(%q<rspec>, ["= 1.3.2"])
    s.add_dependency(%q<mongrel>, [">= 0"])
  end
end
