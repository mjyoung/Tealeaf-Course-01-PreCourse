# 99 Bottles of Beer on the Wall.
# Write a program that prints out the lyrics to that beloved classic, 
# “99 Bottles of Beer on the Wall.”

numBottles = 99

while true
	if numBottles == 0
		break
	elsif numBottles > 1
		puts numBottles.to_s + " bottles of beer on the wall, " +
			numBottles.to_s + " bottles of beer."
		numBottles -= 1
		puts "Take one down, pass it around, " + 
			numBottles.to_s + " bottles of beer on the wall."
	else
		puts numBottles.to_s + " bottle of beer on the wall, " + 
			numBottles.to_s + " bottle of beer."
		puts "Take one down, pass it around, no more bottles of beer on the wall."
		numBottles -= 1
	end	
end


# Deaf grandma. 
# Whatever you say to Grandma (whatever you type in), she should respond 
# with this: HUH?! SPEAK UP, SONNY!
# unless you shout it (type in all capitals). If you shout, she can hear 
# you (or at least she thinks so) and yells back: NO, NOT SINCE 1938!
# To make your program really believable, have Grandma shout a different 
# year each time, maybe any year at random between 1930 and 1950. 
# You can’t stop talking to Grandma until you shout BYE.

# Deaf grandma extended. 
# What if Grandma doesn’t want you to leave? When you shout BYE, she 
# could pretend not to hear you. Change your previous program so that you 
# have to shout BYE three times in a row. Make sure to test your program: 
# if you shout BYE three times but not in a row, you should still be 
# talking to Grandma.

my_string = ''
bye_count = 0

while true 
	puts "Say something to Grandma:"
	my_string = gets.chomp

	if my_string == "BYE"
		bye_count += 1
		if bye_count == 3
			puts "BYE SONNY!"
			break
		else
		end
	elsif my_string == my_string.upcase
		bye_count = 0
		puts "NO, NOT SINCE " + rand(1930..1950).to_s
	else
		bye_count = 0
		puts "HUH?! SPEAK UP, SONNY!"
	end
end

# Leap years. 
# Write a program that asks for a starting year and an ending year and then 
# puts all the leap years between them (and including them, if they are also 
# leap years). Leap years are years divisible by 4 (like 1984 and 2004). 
# However, years divisible by 100 are not leap years (such as 1800 and 1900) 
# unless they are also divisible by 400 (such as 1600 and 2000, which were 
# in fact leap years). What a mess!

puts "Enter a start year:"
start_year = gets.chomp.to_i
puts "Enter an end year:"
end_year = gets.chomp.to_i

current_year = start_year

puts "List of leap years between " + start_year.to_s + " and " + end_year.to_s + ":"

while current_year <= end_year
	if current_year % 400 == 0
		puts current_year
	elsif current_year % 100 == 0
	elsif current_year % 4 == 0
		puts current_year
	else
	end
	current_year += 1
end




