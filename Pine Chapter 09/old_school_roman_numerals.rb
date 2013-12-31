# Old-school Roman numerals. 
# In the early days of Roman numerals, the Romans didn’t bother with any of 
# this new-fangled subtraction “IX” nonsense. No sir, it was straight 
# addition, biggest to littlest—so 9 was written “VIIII,” and so on. Write a 
# method that when passed an integer between 1 and 3000 (or so) returns a 
# string containing the proper old-school Roman numeral. In other words, 
# old_roman_numeral 4 should return 'IIII'. Make sure to test your method on 
# a bunch of different numbers. Hint: Use the integer division and modulus 
# methods on page 37.
#
# For reference, these are the values of the letters used:
# I=1 V=5 X=10 L=50 C=100 D=500 M=1000

def old_roman_numeral num_to_convert
	
	thousands = num_to_convert / 1000
	remainder = num_to_convert % 1000
	fivehundreds = remainder / 500
	remainder = remainder % 500
	onehundreds = remainder / 100
	remainder = remainder % 100
	fifties = remainder / 50
	remainder = remainder % 50
	tens = remainder / 10
	remainder = remainder % 10
	fives = remainder / 5
	remainder = remainder % 5
	ones = remainder

	roman_numeral = 'M'*thousands + 'D'*fivehundreds + 'C'*onehundreds + 
					'L'*fifties + 'X'*tens + 'V'*fives + 'I'*ones
	puts roman_numeral
	return roman_numeral
end

puts "Please enter a number to convert to Old Roman Numerals:"
num_to_convert = gets.chomp.to_i
old_roman_numeral num_to_convert