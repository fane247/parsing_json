require 'json'

json_file = File.read("json_example.json")


parsed_json_to_hash = JSON.parse(json_file)

# puts parsed_json_to_hash["date"]

# parsed_json_to_hash.each do |key, value|

# 	puts key, value


# end


# parsed_json_to_hash["rates"].each do |key, value|

# 	puts key, value


# end

parsed_json_to_hash.each do |key, value|

	if value.class == Hash

		value.each do |key, value|

			puts key, value

		end
		
	else

		puts key, value

	end

end


def loop_stuff (object)

	object.each do |key, value|

		print_stuff(key,value)

	end

end

def print_stuff(key, value)

	puts key, value

end


def is_hash? object

	object.class == Hash

end


# parsed_json_to_hash.each do |key, value|

# 	if is_hash?

# 		loop_stuff(value)
		
# 	else
# 		print_stuff(key, value)

# 	end

# end

def print_out_json_that_contains_a_hash hash

	hash.each do |key, value|

		if is_hash? value

			print_out_json_that_contains_a_hash(value)
			
		else
			print_stuff(key, value)

		end

	end

end


print_out_json_that_contains_a_hash parsed_json_to_hash








