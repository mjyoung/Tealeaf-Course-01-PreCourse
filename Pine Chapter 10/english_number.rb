def english_number number
	if number < 0		# no negative numbers
		return 'Please enter a number that isn\'t negative.'
	end
	if number == 0
		return 'zero'
	end

	num_string = ''		# this is the string we will return

	ones_place = [
		'one',			'two',		'three',
		'four',			'five',		'six',
		'seven',		'eight',	'nine']
	tens_place = [
		'ten',			'twenty',	'thirty',
		'forty',		'fifty',	'sixty',
		'seventy',		'eighty',	'ninety']
	teenagers = [
		'eleven',		'twelve',	'thirteen',
		'fourteen', 	'fifteen',	'sixteen',
		'seventeen',	'eighteen',	'nineteen']

	# "left" is how much of the number we have left to write out
	# "write" is the part we are writing out right now

	left = number
	write = left/1000 			# how many thousands left?
	left = left - write*1000	# subtract off those thousands

	if write > 0
		# recursion
		thousands = english_number write
		num_string += thousands + ' thousand'
		if left > 0
			# so we don't write 'two hundredfifty-one'...
			num_string += ' '
		end
	end

	write = left/100 		# how many hundreds left?
	left = left - write*100 	# subtract off those hundreds
	
	if write > 0
		hundreds = write
		num_string += ones_place[write-1] + ' hundred'
		if left > 0
			num_string += ' '
		end
	end


	write = left/10 		# how many tens left?
	left = left - write*10 	# subtract off those tens

	if write > 0
		if ((write == 1) and (left > 0))
			# since we can't write "tenty-two" instead of "twelve"
			# we have to make a special exception for these
			num_string += teenagers[left-1]
			# the [left-1] is because teenagers[3] is 'fourteen' not
			# 'thirteen'
			left = 0
		else 
			num_string += tens_place[write-1]
			# tens_place[3] is 'forty' not 'thirty'
		end

		if left > 0
			# so we don't write 'sixtyfour'...
			num_string += '-'
		end
	end

	write = left 	# how many ones left to write out?
	left = 0 		# subtract off those ones

	if write > 0
		num_string += ones_place[write-1]
		# ones_place[3] is 'four' not 'three'
	end

	num_string
end

puts english_number(0)
puts english_number(9)
puts english_number(10)
puts english_number(11)
puts english_number(17)
puts english_number(32)
puts english_number(88)
puts english_number(99)
puts english_number(100)
puts english_number(101)
puts english_number(234)
puts english_number(3211)
puts english_number(999999)
puts english_number(1000000000000)
