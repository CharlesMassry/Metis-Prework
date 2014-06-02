class Array

  def each_even(&was_a_block_now_a_proc)
    is_even = true # We start with "true" because arrays start with 0, which is even.

    self.each do |object|
      if is_even
        was_a_block_now_a_proc.call(object)
      end

      is_even = (not is_even) # Toggle from even to odd, or odd to even.
    end
  end

end

["apple", "bad apple", "cherry", "durian"].each_even do |fruit|
  puts "Yum! I just love #{fruit} pies, don't you?"
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.

[1, 2, 3, 4, 5].each_even do |odd_ball|
  puts "#{odd_ball} is NOT an even number!"
end
puts

def profile(description_of_block, &block)
  start_time = Time.now

  block.call

  duration = Time.now - start_time

  puts "#{description_of_block}: #{duration} seconds"
end

profile("25000 doublings") do
  number = 1
  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits" # That is, the number of digits in this HUGE number.
end

profile("count to a million") do
  number = 0

  1000000.times do
    number = number + 1
  end
end
