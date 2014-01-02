# “Modern” Roman numerals. 
# Eventually, someone thought it would be terribly clever if putting a smaller 
# number before a larger one meant you had to subtract the smaller one. As a 
# result of this development, you must now suffer. Rewrite your previous 
# method to return the new-style Roman numerals so when someone calls 
# roman_numeral 4, it should return 'IV'.
# 
# For reference, these are the values of the letters used:
# I=1 V=5 X=10 L=50 C=100 D=500 M=1000

def roman_numeral num_to_convert
	
	num_converted = ''

	thousands = num_to_convert / 1000
	num_converted = 'M'*thousands
	remainder = num_to_convert % 1000

	fivehundreds = remainder / 500
	if remainder >= 900
		num_converted += 'CM'
		remainder = remainder % 900
	else
		num_converted += 'D'*fivehundreds
		remainder = remainder % 500
	end

	onehundreds = remainder / 100
	if onehundreds == 4
		num_converted += 'CD'
		remainder = remainder % 400
	else
		num_converted += 'C'*onehundreds
		remainder = remainder % 100
	end
	

	fifties = remainder / 50
	if remainder >= 90
		num_converted += 'XC'
		remainder = remainder % 90
	else
		num_converted += 'L'*fifties
		remainder = remainder % 50	
	end
	
	tens = remainder / 10
	if tens == 4
		num_converted += 'XL'
		remainder = remainder % 40
	else
		num_converted += 'X'*tens
		remainder = remainder % 10
	end
	
	fives = remainder / 5
	if remainder >= 9
		num_converted += 'IX'
		remainder = remainder % 9
	else
		num_converted += 'V'*fives
		remainder = remainder % 5
	end

	ones = remainder
	if ones == 4
		num_converted += 'IV'
	else 
		num_converted += 'I'*ones
	end

	puts num_converted
	return num_converted
end

puts "Please enter a number to convert to Modern Roman Numerals:"
num_to_convert = gets.chomp.to_i
roman_numeral num_to_convert