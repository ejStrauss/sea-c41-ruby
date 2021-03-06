#alphabetize some words
collate = []
puts 'Give me some words and I\'ll...there\'s a spider on my desk and I\'m slightly afraid.  Just give me some words, ok? One at a time.'
w = gets.chomp
loop do
  collate.push(w)
  if collate.last == ''
    break
  else
    puts 'enter another word or press enter without one.'
    w = gets.chomp
  end
end
if collate[0] == ''
  puts 'You\'re fired'
elsif collate[1] == ''
    puts "Wow. A little enthusiasm would have been nice.  Here\'s your 'list':"
    puts collate
else
  puts 'Thank you for helping me write my Christmas wishlist! I\'ve been putting it off and the Queen of England\'s been hounding me for it. I\'ve just got to tweak it a little. Her majesty demands order, even alphabetically, (she\'s a little uptight), so let\'s make the official list:'
  puts collate.sort!
end

#90's table
hits = [
  ['Can I Kick It?', 'A Tribe Called Quest', '1991'],
  ['Rump Shaker', 'Wreckx-n-Effect', '1992'],
  ['Check Yo Self', 'Ice Cube', '1993'],
  ['Regulate', 'Warren G & Nate Dogg', '1994'],
  ['I Got 5 On It', 'Luniz', '1995'],
  ['Ready Or Not', 'The Fugees', '1996']
]
line_width= 50
puts('1990\'s Hip-Hop Hits:'.center(line_width))
puts
hits.each do |x|
  puts(x[0].ljust(line_width/3) + x[1].ljust(20) + x[2].rjust(line_width/3))
end

#Tacos
def ask(question)
  puts question # change me
  reply = gets.chomp.downcase
  if reply == 'y'
    puts 'We can be friends!'
  elsif reply == 'n'
    puts 'Get out of my site!'
  else
    ask('Let\'s try this again. Do you like eating tacos? (\'y\' or \'n\')')
  end
end

puts ask('Do you like eating tacos? (y or n)')


def old_school_roman_numeral(num)
  x = num
  new_num = []
  loop do
    if x == 1000
      new_num.push('M')
      x = 0
    elsif x >= 500
      x -= 500
      new_num.push('D')
    elsif x >= 100
      x -= 100
      new_num.push('C')
    elsif x >= 50
      x -= 50
      new_num.push('L')
    elsif x >= 10
      x -= 10
      new_num.push('X')
    elsif x >= 5
      x -= 5
      new_num.push('V')
    elsif x > 0 && x < 5
      x -= 1
      new_num.push('I')
    elsif x == 0
      puts 'Your number is ' + new_num.join + '!'
      break
    end
  end
end
puts 'Pick a number between 1 and 1000'
input = gets.chomp
puts 'You chose ' + input.to_s + '. Let me put that in a roman numeral for you.'

puts old_school_roman_numeral(input.to_i)


def modern_roman_numeral(num)
  new_num = []
  loop do
    if num == 1000
      new_num.push('M')
      num = 0
    elsif num >= 900
      new_num.push('CM')
      num -= 900
    elsif num >= 500
      num -= 500
      new_num.push('D')
    elsif num >= 400
      num -= 400
      new_num.push('CD')
    elsif num >= 100
      num -= 100
      new_num.push('C')
    elsif num >= 50
      num -= 50
      new_num.push('L')
    elsif num >= 40
      num -= 40
      new_num.push('XL')
    elsif num >= 10
      num -= 10
      new_num.push('X')
    elsif num == 9
      num -= 9
      new_num.push('IX')
    elsif num >= 5
      num -= 5
      new_num.push('V')
    elsif num == 4
      num -= 4
      new_num.push('IV')
    elsif num > 0 && num < 4
      num -= 1
      new_num.push('I')
    elsif num == 0
      puts 'Your number is ' + new_num.join + '!'
      break
    end
  end
end

puts 'Pick a number between 1 - 1000'
input = gets.chomp.to_i
puts modern_roman_numeral(input)
