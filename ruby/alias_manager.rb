def fname_lname_swap(string)
	name_ary = string.split(' ')
	swapped_name = name_ary[1] + " " + name_ary[0]
end


def make_chars_next(string)
	vowels = ['a', 'e', 'i', 'o', 'u']
	string_with_chars_incremented = ""
	string.each_char do |char|
		if char == ' '
			string_with_chars_incremented << ' '
		elsif vowels.index(char.downcase) != nil
			if char.downcase == 'u'
				if char == char.downcase
					string_with_chars_incremented << 'a'
				else
					string_with_chars_incremented << 'A'
				end
			else
				if char == char.downcase
					string_with_chars_incremented << vowels[vowels.index(char)+1]
				else
					string_with_chars_incremented << vowels[vowels.index(char.downcase)+1].upcase
				end
			end
		elsif char == 'z'
			string_with_chars_incremented << 'a'
		elsif char == 'Z'
			string_with_chars_incremented << 'A'
		else
			string_with_chars_incremented << char.next
		end
	end
	string_with_chars_incremented
end



aliases = {}

loop do
	puts "Enter the first and last name (separated by a space) of the name you'd like to create a fake name for (type 'quit' if you're done): "
	full_name = gets.chomp
	if full_name == "quit"
		break
	end
	aliases[full_name.to_sym] = make_chars_next(fname_lname_swap(full_name))
	puts "That name translates to #{aliases[full_name.to_sym]}."
end

aliases.each_pair {|name, fake_name| puts "#{name.to_s} is also known as #{fake_name}." }







				

