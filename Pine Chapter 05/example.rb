puts 'Hello there, and what\'s your name?'
name = gets.chomp # chomp takes off any [Enter] characters at the end
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

# Full name greeting. 
# Write a program that asks for a person’s first name, then middle, 
# and then last. Finally, it should greet the person using their 
# full name.

puts 'What is your first name?'
firstName = gets.chomp
puts 'and your middle name?'
middleName = gets.chomp
puts 'and your last name?'
lastName = gets.chomp
puts 'Hello, ' + firstName + " " + middleName + " " + lastName + "! Nice to meet you :)"


# Bigger, better favorite number. 
# Write a program that asks for a person’s favorite number. Have 
# your program add 1 to the number, and then suggest the result as a 
# bigger and better favorite number. (Do be tactful about it, though.)

puts 'What is your favorite number?'
favNum = gets.chomp
biggerNum = favNum.to_i + 1
puts 'I think ' + biggerNum.to_s + ' is a better number, don\'t you? :)'