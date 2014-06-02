time = Time.new             # That moment in time
time2 = time + 60           # + 1 minute

puts time
puts time2
puts

puts Time.mktime(2000, 1, 1)          # Y2K
puts Time.mktime(1976, 8, 3, 10, 11).to_s  + " Chris Pine's birthday"
my_bday = Time.mktime(1988, 2, 26)    # my bday
puts my_bday + 1000000000             # + 1,000,000,000 seconds
puts

puts "What year were you born?"
year = gets.to_i
puts "What month were you born?"
month = gets.to_i
puts "What day were you born?"
day = gets.to_i
birthday = Time.mktime(year, month, day)
number_of_bday = (Time.new - birthday) / 60 / 60 / 24 / 365  # convert to years
number_of_bday = number_of_bday.to_i                         # convert to integer
puts birthday
number_of_bday.times do
  puts "SPANK!"
end
