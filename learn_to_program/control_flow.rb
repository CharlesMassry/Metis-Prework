puts 1 > 2
puts 1 < 2

puts 5 >= 5
puts 5 <= 4

puts 1 == 1
puts 2 != 1

puts 'cat' < 'dog'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name + '.'
if name == 'Charlie'
  puts 'What a lovely name!'
end

puts 'I am a fortune-teller. Tell me your name:'
name = gets.chomp
if name == 'Charlie'
  puts 'I see great things in your future.'
else
  puts 'Your future is... Oh my! Would you look at the time!'
  puts 'I really have to go, sorry!'
end

puts 'Hello, and welcome to 7th grade English.'
puts 'My name is Mrs. Gabbard. And your name is...?'
name = gets.chomp
if name == name.capitalize
  puts 'Please take a seat, ' + name + '.'
else
  puts name + '? You mean ' + name.capitalize + ', right?'
  puts 'Don\'t you even know how to spell your name??'
  reply = gets.chomp
  if reply.downcase == 'yes'
    puts 'Hmmph! Well, sit down!'
  else
    puts 'GET OUT!!'
  end
end

command = ''
while command != 'bye'
  command = gets.chomp
  puts command
end
puts 'Come again soon!'

puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello ' + name + '.'
if(name == 'Charlie' || name == 'Katy')
  puts 'What a lovely name!'
end

iAmCharlie = true
iAmPurple = false
meWantFood = true
iEatRocks = false

puts (iAmCharlie && meWantFood)
puts (meWantFood && iEatRocks)
puts (iAmPurple && meWantFood)
puts (iAmPurple && iEatRocks)
puts
puts (iAmCharlie || meWantFood)
puts (meWantFood || iEatRocks)
puts (iAmPurple || meWantFood)
puts (iAmPurple || iEatRocks)
puts
puts (not iAmPurple)
puts (not iAmCharlie)


beer = 99
while beer != 0
  puts beer.to_s + ' bottles of beer on the wall, ' + beer.to_s + ' bottles of beer.'
  beer -= 1
  puts 'Take one down and pass it around, ' + beer.to_s + ' bottles of beer on the wall.'
end

count = 0
while count != 3
  puts "What do you want to say to Grandma?"
  say = gets.chomp
  if say == "BYE"
    count += 1
  else
    count = 0
  end
  if say == say.downcase
    puts "HUH?! SPEAK UP, SONNY!"
  else
    puts "NO, NOT SINCE " + (1950 - rand(21)).to_s + "."
  end
end

year = 0
while year != 2014
  year += 1
  if year % 4 == 0
    puts year.to_s + " was a leap year."
  end
end