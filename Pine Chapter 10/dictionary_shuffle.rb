# Shuffle using RECURSION
def recursive_shuffle some_array, random_array
	random_word = rand(0..some_array.count-1)
	random_array.push(some_array[random_word])
	some_array.delete(some_array[random_word])

	if some_array.empty?
		puts random_array.join(', ')
	else
		recursive_shuffle some_array, random_array
	end
end


# Shuffle using WHILE LOOP
# def shuffle some_array 
# 	while some_array.empty? == false
# 			random_word = rand(0..some_array.count-1)
# 			random_array.push(some_array[random_word])
# 			some_array.delete(some_array[random_word])
# 	end

# 	puts random_array.join(', ')
# end

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

recursive_shuffle word_array, []
