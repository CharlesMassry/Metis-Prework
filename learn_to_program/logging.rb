$nest = -1  # So it doesn't start out tabbed
def log(description, &block)
  $nest += 1
  puts "  " * $nest + "Beginning \"#{description}\"..."  # Multipies nest by tab space and adds to beginning of text
  puts "  " * $nest + "...\"#{description}\" finished, returning: #{block.call}"
  $nest -= 1
end

log("outer block") do
  log("some little block") do
    3 + 2
  end

  log("yet another block") do
    log("okay last one") do
      "I like Italian food!"
    end
    "I like Thai food!"
  end

  log("just one more") do
    [1, 2, 3]
  end
  false
end
