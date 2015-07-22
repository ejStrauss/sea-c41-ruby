#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60
  end
end

class String
  def indent(amount = 2)
    indented = (" " * amount) + self
  end
end

class Integer
  def to_roman
    num = self
    roman_array = Array.new
    if num >= 1000
      roman_array.push "M" * (num / 1000)
      num = num % 1000
    end
    if num >= 900
      roman_array.push "CM"
      num -= 900
    end
    if num >= 500
      roman_array.push "D" * (num / 500)
      num = num % 500
    end
    if num >= 400
      roman_array.push "CD"
      num -= 400
    end
    if num >= 100
      roman_array.push "C" * (num / 100)
      num = num % 100
    end
    if num >= 90
      roman_array.push "LC"
      num -= 90
    end
    if num >= 50
      roman_array.push "L" * (num / 50)
      num = num % 50
    end
    if num >= 40
      roman_array.push "XL"
      num -= 40
    end
    if num >= 10
      roman_array.push "X" * (num / 10)
      num = num % 10
    end
    if num >= 9
      roman_array.push "IX"
      num -= 9
    end
    if num >= 5
      roman_array.push "V"
      num -= 5
    end
    if num >= 4
      roman_array.push "IV"
      num -= 4
    end
    until num == 0
      roman_array.push "I"
      num -= 1
    end
    roman_array.join
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end

puts 10.hours_in_seconds
puts 'string'.indent
puts 1999.to_roman
puts [10, 20, 30].second
puts [10, 20, 30].third

