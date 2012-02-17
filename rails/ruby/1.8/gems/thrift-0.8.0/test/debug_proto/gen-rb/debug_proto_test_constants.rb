#
# Autogenerated by Thrift Compiler (0.8.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

require 'debug_proto_test_types'

COMPACT_TEST = CompactProtoTestStruct.new({
  %q"a_byte" => 127,
  %q"a_i16" => 32000,
  %q"a_i32" => 1000000000,
  %q"a_i64" => 1099511627775,
  %q"a_double" => 5.6789,
  %q"a_string" => %q"my string",
  %q"true_field" => true,
  %q"false_field" => false,
  %q"empty_struct_field" => Empty.new({
  }),
  %q"byte_list" => [
    -127,
    -1,
    0,
    1,
    127,
  ],
  %q"i16_list" => [
    -1,
    0,
    1,
    32767,
  ],
  %q"i32_list" => [
    -1,
    0,
    255,
    65535,
    16777215,
    2147483647,
  ],
  %q"i64_list" => [
    -1,
    0,
    255,
    65535,
    16777215,
    4294967295,
    1099511627775,
    281474976710655,
    72057594037927935,
    9223372036854775807,
  ],
  %q"double_list" => [
    0.1,
    0.2,
    0.3,
  ],
  %q"string_list" => [
    %q"first",
    %q"second",
    %q"third",
  ],
  %q"boolean_list" => [
    true,
    true,
    true,
    false,
    false,
    false,
  ],
  %q"struct_list" => [
    Empty.new({
    }),
    Empty.new({
    }),
  ],
  %q"byte_set" => Set.new([
    -127,
    -1,
    0,
    1,
    127,
  ]),
  %q"i16_set" => Set.new([
    -1,
    0,
    1,
    32767,
  ]),
  %q"i32_set" => Set.new([
    1,
    2,
    3,
  ]),
  %q"i64_set" => Set.new([
    -1,
    0,
    255,
    65535,
    16777215,
    4294967295,
    1099511627775,
    281474976710655,
    72057594037927935,
    9223372036854775807,
  ]),
  %q"double_set" => Set.new([
    0.1,
    0.2,
    0.3,
  ]),
  %q"string_set" => Set.new([
    %q"first",
    %q"second",
    %q"third",
  ]),
  %q"boolean_set" => Set.new([
    true,
    false,
  ]),
  %q"struct_set" => Set.new([
    Empty.new({
    }),
  ]),
  %q"byte_byte_map" => {
    1 => 2,
  },
  %q"i16_byte_map" => {
    1 => 1,
    -1 => 1,
    32767 => 1,
  },
  %q"i32_byte_map" => {
    1 => 1,
    -1 => 1,
    2147483647 => 1,
  },
  %q"i64_byte_map" => {
    0 => 1,
    1 => 1,
    -1 => 1,
    9223372036854775807 => 1,
  },
  %q"double_byte_map" => {
    -1.1 => 1,
    1.1 => 1,
  },
  %q"string_byte_map" => {
    %q"first" => 1,
    %q"second" => 2,
    %q"third" => 3,
    %q"" => 0,
  },
  %q"boolean_byte_map" => {
    true => 1,
    false => 0,
  },
  %q"byte_i16_map" => {
    1 => 1,
    2 => -1,
    3 => 32767,
  },
  %q"byte_i32_map" => {
    1 => 1,
    2 => -1,
    3 => 2147483647,
  },
  %q"byte_i64_map" => {
    1 => 1,
    2 => -1,
    3 => 9223372036854775807,
  },
  %q"byte_double_map" => {
    1 => 0.1,
    2 => -0.1,
    3 => 1e+06,
  },
  %q"byte_string_map" => {
    1 => %q"",
    2 => %q"blah",
    3 => %q"loooooooooooooong string",
  },
  %q"byte_boolean_map" => {
    1 => true,
    2 => false,
  },
  %q"list_byte_map" => {
    [
      1,
      2,
      3,
    ] => 1,
    [
      0,
      1,
    ] => 2,
    [
    ] => 0,
  },
  %q"set_byte_map" => {
    Set.new([
      1,
      2,
      3,
    ]) => 1,
    Set.new([
      0,
      1,
    ]) => 2,
    Set.new([
    ]) => 0,
  },
  %q"map_byte_map" => {
    {
      1 => 1,
    } => 1,
    {
      2 => 2,
    } => 2,
    {
    } => 0,
  },
  %q"byte_map_map" => {
    0 => {
    },
    1 => {
      1 => 1,
    },
    2 => {
      1 => 1,
      2 => 2,
    },
  },
  %q"byte_set_map" => {
    0 => Set.new([
    ]),
    1 => Set.new([
      1,
    ]),
    2 => Set.new([
      1,
      2,
    ]),
  },
  %q"byte_list_map" => {
    0 => [
    ],
    1 => [
      1,
    ],
    2 => [
      1,
      2,
    ],
  },
})

MYCONST = 2

MY_SOME_ENUM = 1

MY_SOME_ENUM_1 = 1

MY_ENUM_MAP = {
    1 =>   2,
}

EXTRA_CRAZY_MAP = {
    1 => StructWithSomeEnum.new({
    %q"blah" =>     2,
  }),
}
