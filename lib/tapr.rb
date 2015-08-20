# Copyright (C) 2015  Eloy Espinaco

puts 'TAP version 13'

$assertion = 0

def plan count
  $plan = count
  puts "1..#{ count }"
end

def assert passed, description
  $assertion +=1
  passed = passed ? '' : 'not '
  puts "#{ passed }ok #{ $assertion } - #{ description}"
end
