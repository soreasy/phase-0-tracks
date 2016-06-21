# prompt user for various input
# convert user input to the appropriate data type
# set user input as a value to corresponding keys in user_info hash
# print the hash
# ask the user if there is a particular key he/she woud like to update, and update that key if so
# print the final hash!

puts "Hiya! What is your first name?"
fname_input = gets.chomp

puts "And your last name is?"
lname_input = gets.chomp

puts "How old are you?"
age_input = gets.chomp.to_i

puts "How many kids do you have?"
kids_input = gets.chomp.to_i

puts "Do you like birch oak? (y/n)"
if gets.chomp == "y"
	likes_birch_input = true
else
	likes_birch_input = false
end

user_info = {first_name: fname_input, last_name: lname_input, age: age_input, num_kids: kids_input, likes_birch: likes_birch_input}
puts user_info 

puts "If you would like to update a key, enter the key exactly as seen in the above hash without the ':' or '=>'. If not enter 'none'."
update_choice = gets.chomp

if update_choice == "none"
	puts "Okay, have a good one! Here's the final hash:"
	puts user_info
else
	if update_choice == "age" || update_choice == "num_kids"
		puts "What would you like to make the new value of #{update_choice}?"
		new_value = gets.chomp.to_i
		user_info[update_choice.to_sym] = new_value
	elsif update_choice == "likes_birch"
		if user_info[:likes_birch] == true
			user_info[:likes_birch] = false
		else
			user_info[:likes_birch] = true
		end
	else
		puts "What would you like to make the new value of #{update_choice}?"
		new_value = gets.chomp
		user_info[update_choice.to_sym] = new_value
	end

	puts "Here's the final hash:"
	puts user_info
end

