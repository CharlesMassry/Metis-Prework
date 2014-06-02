def gf_clock(&block)
  Time.now.hour.times do
    block.call
  end
end

gf_clock do
  puts "DONG!"
end
