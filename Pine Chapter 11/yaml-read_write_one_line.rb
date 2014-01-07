require 'yaml'

def yaml_save(object, filename)
	File.open filename, "w" do |f|
		f.write(object.to_yaml)
	end
end

def yaml_load filename
	yaml_string = File.read filename

	YAML::load yaml_string
end

test_hash = { first_name: "Michael",
						  last_name:  "Young",
						  email:  	  "test@gmail.com"}

filename = "yaml-read_write_one_line.txt"

yaml_save(test_hash, filename)

read_hash = yaml_load(filename)

puts "read_hash: "
puts read_hash

puts "test_hash: "
puts test_hash

puts (read_hash == test_hash)

