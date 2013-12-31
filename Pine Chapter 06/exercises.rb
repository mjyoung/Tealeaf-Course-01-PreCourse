# Angry boss. 
#
# Write an angry boss program that rudely asks what you want. 
# Whatever you answer, the angry boss should yell it back to you 
# and then fire you. For example, if you type in I want a raise, 
# it should yell back like this:
#
# WHADDAYA MEAN "I WANT A RAISE"?!? YOU'RE FIRED!!

puts 'WHAT DO YOU WANT?'
answer = gets.chomp
puts 'WHADDAYA MEAN "' + answer.upcase + '"?!? YOU\'RE FIRED!!'


# Table of contents. 
#
# Here’s something for you to do in order to play around more with 
# center, ljust, and rjust: write a program that will display a table 
# of contents

line_width = 60
puts "Table of Contents".center(line_width)
puts ""
puts "Chapter 1:  Getting Started".ljust(line_width/2) + "Page  1".rjust(line_width/2)
puts "Chapter 2:  Numbers".ljust(line_width/2) + "Page  9".rjust(line_width/2)
puts "Chapter 3:  Letters".ljust(line_width/2) + "Page 13".rjust(line_width/2)