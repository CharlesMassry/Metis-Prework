colorArray = []
colorHash  = {}

colorArray[0]         = "red"
colorArray[1]         = "green"
colorArray[2]         = "blue"
colorHash["strings"]  = "red"
colorHash["numbers"]  = "green"
colorHash["keywords"] = "blue"

colorArray.each do |color|
  puts color
end

colorHash.each do |code_type, color|
  puts code_type + ": " + color
end

weirdHash = Hash.new

weirdHash[12] = "monkeys"
weirdHash[[]] = "emptiness"
weirdHash[Time.new] = "no time like the present"
weirdHash.each do |key, value|
  puts "#{key}: #{value}"
end