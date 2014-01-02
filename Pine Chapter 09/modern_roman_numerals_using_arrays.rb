# “Modern” Roman numerals. 
# Eventually, someone thought it would be terribly clever if putting a smaller 
# number before a larger one meant you had to subtract the smaller one. As a 
# result of this development, you must now suffer. Rewrite your previous 
# method to return the new-style Roman numerals so when someone calls 
# roman_numeral 4, it should return 'IV'.
# 
# For reference, these are the values of the letters used:
# I=1 V=5 X=10 L=50 C=100 D=500 M=1000

### REFACTORING modern_roman_numerals.rb TO BE 'DRY' USING ARRAYS ###

def roman_numeral num_to_convert
	
	remainder = num_to_convert
	num_converted = ''
	
	my_roman_array = [
		# [0] letter representation, 
		# [1] number value, 
		# [2] unique remainder value for alternate lettering, 
		# [3] alternate lettering, 
		# [4] remainder / number value, 
		# [5] converted roman numeral ]

		[ 'M', 1000, 0,   '',   0, '' ],
		[ 'D', 500,  900, 'CM', 0, '' ],
		[ 'C', 100,  0,   'CD', 0, '' ],
		[ 'L', 50,   90,  'XC', 0, '' ],
		[ 'X', 10,   0,   'XL', 0, '' ],
		[ 'V', 5,    9,   'IX', 0, '' ],
		[ 'I', 1,    0,   'IV', 0, '' ]
	]

	my_roman_array.each do |array|
		
		array[4] = remainder / array[1] # get the (remainder / number value)

		if array[2] != 0 && remainder >= array[2]
			array[5] = array[3]
			remainder = remainder % array[2]
		elsif array[4] >= 4
			array[5] = array[3]
			remainder = remainder % (array[1] * array[4])
		else
			array[5] = array[0]*array[4]
			remainder = remainder % (array[1])
		end

		num_converted += array[5]
	end

	puts num_converted
	return num_converted

end

puts "Please enter a number to convert to Modern Roman Numerals:"
num_to_convert = gets.chomp.to_i
roman_numeral num_to_convert