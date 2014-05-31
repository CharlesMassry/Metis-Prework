def englishNumber number
  if number < 0 # No negative numbers.
    return 'Please enter a number zero or greater.'
  end
  if number == 0
    return 'zero'
  end

  # No more special cases! No more returns!

  numString = '' # This is the string we will return.

  onesPlace = ['one',     'two',       'three',    'four',      'five',
               'six',     'seven',     'eight',    'nine']
  tensPlace = ['ten',     'twenty',    'thirty',   'fourty',    'fifty',
               'sixty',   'seventy',   'eighty',   'ninety']
  teenagers = ['eleven',  'twelve',    'thirteen', 'fourteen',  'fiveteen',
               'sixteen', 'seventeen', 'eighteen', 'nineteen']

  trillions_left = number
  trillions_write = trillions_left / 1000000000000
  trillions_left = trillions_left - trillions_write * 1000000000000

  billions_left = trillions_left
  billions_write = billions_left / 1000000000
  billions_left = billions_left - billions_write * 1000000000

  millions_left = billions_left
  millions_write = millions_left / 1000000
  millions_left = millions_left - millions_write * 1000000
  
  thousands_left = millions_left
  thousands_write = thousands_left/1000  # write = 34,000 / 1000   write = 34    write = 34 /1000  write = 0 # write = 3211 / 1000
  thousands_left = thousands_left - thousands_write * 1000  # left = 34,000 - 34 * 1000     left = 0 # left = 3211 - 3
  
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  # write and left... get it? :)
  left = thousands_left      # Use remaining number                                           # left = 3211
  write = left/100           # How many hundreds left to write out.     # write = 3211 / 100  # write = 32
  left = left - write * 100  # Subtract off those hundreds              # left = 3211 - 3200  # left = 11

  if trillions_write > 0
    trillions = englishNumber trillions_write
    numString = "#{numString}#{trillions} trillion"

    if trillions_left > 0
      numString = "#{numString} "
    end
  end

  if billions_write > 0
    billions = englishNumber billions_write
    numString = "#{numString}#{billions} billion"

    if billions_left > 0
      numString = "#{numString} "
    end
  end

  if millions_write > 0
    millions = englishNumber millions_write
    numString = "#{numString}#{millions} million"

    if millions_left > 0
      numString = "#{numString} "
    end
  end

  if thousands_write > 0
    thousands = englishNumber thousands_write
    numString = "#{numString}#{thousands} thousand"

    if thousands_left > 0
      numString = "#{numString} "
    end
  end

  if write > 0 && write < 10
    # Now here's a really sly trick:
    hundreds = englishNumber write
    numString = "#{numString}#{hundreds} hundred"
    # That's called "recursion". So what did I just do?
    # I told this method to call itself, but with "write" instead of 
    # "number".  Remember that "write" is (at the moment) the number of
    # hundreds we have to write out. After we add "hundreds" to "numString",
    # we add the string ' hundred' after it.  So, for example, if
    # we originally called englishNumber with 1999 (so "number" = 1999),
    # then at this point "write" would be 19, and "left" would be 99.
    # The laziest thing to do at this point is to have englishNumber
    # write out the 'nineteen' for us, then we write out ' hundred',
    # and then the rest of englishNumber writes out 'ninety-nine'.

    if left > 0
      # So we don't write 'two hundredfifty-one'...
      numString = "#{numString} "
    end
  end

  write = left/10           # How many tens left to write out
  left = left - write * 10  # Subtract off those tens.

  if write > 0
    if ((write == 1) and (left > 0))
      # Since we can't write "tenty-two" instead of "twelve",
      # we have to make a special exception for these.
      numString = "#{numString}#{teenagers[left-1]}"
      # The "-1" is because teenagers[3] is 'fourteen', not 'thirteen'.

      # Since we took care of the digit in the ones place already,
      # we have nothing left ot write.
      left = 0
    else
      numString = "#{numString}#{tensPlace[write-1]}"
      # The "-1" is because tensPlace[3] is 'forty', not 'thirty'.
    end

    if left > 0
      # So we don't write 'sixtyfour'...
      numString = "#{numString} "
    end
  end

  write = left  # How many ones left to write out?
  left = 0      # Subtract off those ones.

  if write > 0
    numString = "#{numString}#{onesPlace[write-1]}"
    # The "-1" is because onesPlace[3] is 'four' not 'three'.
  end

  # Now we just return "numString"...
  numString
end

puts englishNumber(0)
puts englishNumber(9)
puts englishNumber(10)
puts englishNumber(11)
puts englishNumber(13)
puts englishNumber(17)
puts englishNumber(32)
puts englishNumber(88)
puts englishNumber(99)
puts englishNumber(100)               # one hundred
puts englishNumber(101)               # one hundred one
puts englishNumber(234)               # two hundred thirty four
puts englishNumber(1000)              # one thousand
puts englishNumber(3211)              # three thousand two hundred eleven
puts englishNumber(34000)             # thirty four thousand
puts englishNumber(100000)            # one hundred thousand
puts englishNumber(999999)            # nine hundred nintey nine thousand nine hundred and ninety nine
puts englishNumber(1000000)           
puts englishNumber(1000000000)
puts englishNumber(1000000000000)     # 1,000,000,000,000