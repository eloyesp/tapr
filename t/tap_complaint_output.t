#!/usr/bin/env ruby

require 'tapr'

def tap_complaint? output
  output = output.lines
  return false unless output.shift =~ /\ATAP version 13$/
  declared_plan = false
  output.each do |tl|
    case tl
    when /^1\.\.(\d+)$/
      return false if declared_plan
      declared_plan = true
    when /^(not )?ok (\d+) [^#]*( # .*)?$/
    when /^\s+---/
      yaml_block = true
    when /^\s+\.\.\./
      return false unless yaml_block
      yaml_block = false
    when /^\s+/
      return false unless yaml_block
    else
      puts "# problematic output: #{ tl }"
      return false
    end
  end
  declared_plan
end

samples = Dir["#{ __dir__ }/samples/*.t"]

plan samples.size

samples.each do |s|
  output = `ruby -I #{ __dir__ }/../lib #{ s }`
  assert tap_complaint?(output), "#{ File.basename(s) } output is tap complaint"
end
