toast = Proc.new do
  puts "Cheers!"
end

toast.call
toast.call
toast.call

do_you_like = Proc.new do |a_good_thing|
  puts "I really like #{a_good_thing}."
end

do_you_like.call "chocolate"
do_you_like.call "ruby"
