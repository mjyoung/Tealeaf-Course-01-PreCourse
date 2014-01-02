def sort some_array # This "wraps" recursive_sort
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	# Your code goes here
	smallest_word = unsorted_array[0]
	unsorted_array.each do |word|
		if word.downcase < smallest_word.downcase
			smallest_word = word
		else
		end
	end
	sorted_array.push(smallest_word)
	unsorted_array.delete(smallest_word)

	if unsorted_array.empty?
		puts sorted_array.join(', ')
	else
		recursive_sort unsorted_array, sorted_array
	end
end


word_array = []

while true	
	puts "Please type a word or press Enter on an empty line to stop: "
	word_string = gets.chomp

	if word_string == ''
		break
	else
		word_array.push(word_string)
	end
end

sort word_array
