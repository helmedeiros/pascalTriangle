#!/usr/bin/env ruby -wKU
require "pascals_triangle"
require "pretty_printed_array"

rows = (ARGV.shift || 5 ).to_i
puts PrettyPrintedArray.new(PascalsTriangle.new.limit(rows).to_a)