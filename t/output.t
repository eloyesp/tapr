#!/usr/bin/env ruby

require 'tapr'

plan 1

output = `ruby t/simple.t`
expected = <<OUT
1..1
ok 1 an assert
OUT

assert output == expected, 'it produces TAP'
