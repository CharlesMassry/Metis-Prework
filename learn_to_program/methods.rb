puts 'hello '.+ 'world'
puts (10.* 9).+ 9

iCantBelieveIMadeAVariableNameThisLongJustToPointToA3 = 3
puts iCantBelieveIMadeAVariableNameThisLongJustToPointToA3

var1 = 'stop'
var2 = 'stressed'
var3 = 'Can you pronounce this sentence backwards?'

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'What is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters in your name, ' + name + '?'

puts 'What is your first name?'
first_name = gets.chomp
puts 'What is your middle name?'
middle_name = gets.chomp
puts 'What is your last name?'
last_name = gets.chomp
total = first_name.length + middle_name.length + last_name.length
puts 'Did you know there are ' + total.to_s + ' letters in your name, ' + first_name + middle_name + last_name + '?'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

lineWidth = 50
puts(               'Old Mother Hubbard'.center(lineWidth))
puts(              'Sat in her cupboard'.center(lineWidth))
puts(         'Eating her curds an whey'.center(lineWidth))
puts(         'When along came a spider'.center(lineWidth))
puts(       'Which sat down besider her'.center(lineWidth))
puts('And scared her poor show dog away'.center(lineWidth))

lineWidth = 40
str = '--> text <--'
puts str.ljust lineWidth
puts str.center lineWidth
puts str.rjust lineWidth
puts str.ljust(lineWidth/2) + str.rjust(lineWidth/2)

puts "What do you want to ask me, and don't forget I'm the boss so you can ask me anything."
ask = gets.chomp
puts 'WHAT DO YOU MEAN "' + ask.upcase + '"?!?  YOU\'RE FIRED'

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7

puts((5-2).abs)
puts((2-5).abs)

puts rand
puts rand
puts rand
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(1))
puts(rand(1))
puts(rand(1))
puts(rand(99999999999999999999999999999999999999999999999999999999999))
puts('The weatherman said there is a ' + rand(101).to_s + '% chance of rain,')
puts('but you can never truse a weatherman.')

srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts ''
srand 1776
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))
puts(rand(100))

puts(Math::PI)
puts(Math::E)
puts(Math.cos(Math::PI/3))
puts(Math.tan(Math::PI/4))
puts(Math.log(Math::E**2))
puts((1 + Math.sqrt(5)) / 2)