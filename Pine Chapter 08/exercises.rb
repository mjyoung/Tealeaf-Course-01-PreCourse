# Building and sorting an array. 
# Write the program we talked about at the beginning of this chapter, one 
# that asks us to type as many words as we want (one word per line, 
# continuing until we just press Enter on an empty line) and then repeats 
# the words back to us in alphabetical order. Make sure to test your program 
# thoroughly; for example, does hitting Enter on an empty line always exit 
# your program? Even on the first line? And the second? Hint: There’s an
# array method that will give you a sorted version of an array: sort. 

my_array = []
my_string = ''

while true
	puts "Please type a word or press Enter on an empty line to stop: "
	my_string = gets.chomp
	if my_string == ''
		break
	else my_array.push(my_string)
	end
end

my_array = my_array.sort

puts my_array.join(", ")

my_array.each do |word|
	puts word
end

# Table of contents, revisited. 
# Rewrite your table of contents program on page 36. Start the program with 
# an array holding all of the information for your table of contents 
# (chapter names, page numbers, and so on). Then print out the information 
# from the array in a beautifully formatted table of contents.

toc_array = [["Chapter 1:  Getting Started", "Page  1"], 
			 ["Chapter 2:  Numbers", "Page  9"], 
			 ["Chapter 3:  Letters", "Page 13"]]
line_width = 60

puts "Table of Contents".center(line_width)
puts
toc_array.each do |chapter_array|
	puts chapter_array[0].ljust(line_width/2) + chapter_array[1].rjust(line_width/2)
end