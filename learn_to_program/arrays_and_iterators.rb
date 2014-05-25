names = ['Ada', 'Belle', 'Chris']
puts names
puts names[0]
puts names[1]
puts names[2]
puts names[3]

languages = ['English', 'German', 'Ruby']
languages.each do |lang|
  puts 'I love ' + lang + '!'
  puts 'Don\'t you?'
end
puts 'And let\'s hear it for C++!'
puts '...'

3.times do
  puts 'Hip-Hip-Hooray!'
end

foods = ['artichoke', 'brioche', 'caramel']
puts foods
puts
puts foods.to_s
puts
puts foods.join(', ')
puts
puts foods.join(' :) ') + ' 8)'

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'
puts favorites[0]
puts favorites.last
puts favorites.length
puts favorites.pop
puts favorites
puts favorites.length

words = []
while words.last != ''
  puts "Write a word. (Blank line to end)"
  word = gets.chomp
  words.push(word)
end
puts words.sort

words = []
while words.last != ''
  puts "Write a word. (Blank line to end)"
  word = gets.chomp
  words.push(word)
end
if words.length > 1
  loop do
    not_sorted = true
    (words.length - 2).times do |x|
      if words[x] > words[x + 1]
        words[x], words[x + 1] = words[x + 1], words[x]
        not_sorted = false
      end
    end
    break if not_sorted == true
  end
end
puts words
