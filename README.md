# TAPR a TAP complaint test framework

Minimalist test framework that produce TAP complaint output. It doesn't add an
unnecessary runner, it is just plain ruby, and it output TAP, so you can parse
it as you wish.

It enable testing an application using different programming languages with a
single suite using [prove][].

 [prove]: http://perldoc.perl.org/prove.html "prove (perl)"

## Usage

```ruby
#!/usr/env ruby

require 'tapr'

plan 3

bool = true

assert bool, 'is true'
assert !bool, 'is false'

# lets make a mock
class Mock
  def important
    assert true, 'important was called'
  end
end

Mock.new.important
```

## Development notes

Tapr tests are run with prove and depend on tapr, so make sure to install
it.

## License

Copyright (C) 2015  Eloy Espinaco

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
