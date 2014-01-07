home_directory = Dir.home

sound_wav_list = Dir["#{home_directory}/Documents/Reusable Assets/Sound Effects/ruby_rename_test/*.{wav,WAV,Wav}"]
sound_mp3_list = Dir["#{home_directory}/Documents/Reusable Assets/Sound Effects/ruby_rename_test/*.{mp3,MP3,Mp3}"]

# Change directory to where I want the files to be moved/renamed to
Dir.chdir("#{home_directory}/Documents/Reusable Assets/Sound Effects/ruby_rename_test/renamed_files")

puts "What would you like to name the *** WAV *** batch?"
wav_batch_name = gets.chomp

puts "What would you like to name the *** MP3 *** batch?"
mp3_batch_name = gets.chomp

total_files = sound_wav_list.length + sound_mp3_list.length

puts
puts "Downloading #{total_files} files."

file_number = 1 # for incrementing the filename

puts
print "Beginning conversion of *** WAV *** files: "

sound_wav_list.each do |name|
	print '.'  # This is our progress bar

	if file_number < 10
		new_name = "#{wav_batch_name}0#{file_number}.wav"
	else
		new_name = "#{wav_batch_name}#{file_number}.wav"
	end

	File.rename(name, new_name)
	file_number += 1
end

file_number = 1 # reset count for MP3 files

puts
print "Beginning conversion of *** MP3 *** files: "

sound_mp3_list.each do |name|
	print '.'  # This is our progress bar

	if file_number < 10
		new_name = "#{mp3_batch_name}0#{file_number}.mp3"
	else
		new_name = "#{mp3_batch_name}#{file_number}.mp3"
	end

	File.rename(name, new_name)
	file_number += 1
end

puts
puts "All done!"
