# Release 1

# Method to create a list
# input: string of items separated by spaces
# steps: 
	# initialize an empty hash
	# split string up by spaces (creating an array of the items)
	# FOR EACH item in the array
		# add it to the hash, setting the default quantity to 1
	# call the 'Method to print a list' on the hash
# output: return the hash

# Method to add an item to a list
# input: item name and optional quantity and hash
# steps: 
	# IF the quantity is not nil
		# add the item with the provided quantity to the provided hash
	# ELSE
		# add the item with a default quantity of 1 to the hash
# output: return the hash

# Method to remove an item from the list
# input: the list (hash) and the item to be removed
# steps:
	# IF the item exists in the hash
		# delete the item and its associated quantity
	# ELSE
		# print that there is no such item in the list
# output: return the hash

# Method to update the quantity of an item
# input: item, new quantity, and the hash
# steps:
	# IF the item exists in the hash
		# set its quantity to be the new quantity
	# ELSE
		# print that there is no such item in the list
# output: return the hash

# Method to print a list and make it look pretty
# input: the hash
# steps:
	# print an intro line such as 'these are the contents of your grocery list with their associated quantities'
	# FOR EACH item in the list
		# print the item and its associated quantity
# output: returns the hash

# Release 2

def create_list_of(string_of_items)
	ary_of_items = string_of_items.split(' ')
	item_list = {}
	ary_of_items.each {|x| item_list[x] = 1}
	print_list(item_list)
end

def add_to_list(item, quantity, hash)
	hash[item] = quantity
	hash
end

def remove_from_list(item, hash)
	if hash.include?(item)
		hash.delete(item)
	else
		puts "The given item doesn't exist in the grocery list."
	end
	hash
end

def update_quantity(item, new_quantity, hash)
	if hash.include?(item)
		hash[item] = new_quantity
	else
		puts "The given item doesn't exist in the grocery list."
	end
	hash
end

def print_list(hash)
	puts "The contents of your grocery list with their associated quantities are as follows: "
	hash.each {|item, quantity| puts "#{item.capitalize}: #{quantity}"}
end

#grocery_list = create_list_of("banana apple orange")
#add_to_list("mango", 4, grocery_list)
#print_list(grocery_list)
#remove_from_list("apple", grocery_list)
#print_list(grocery_list)
#update_quantity("mango", 6, grocery_list)
#print_list(grocery_list)

# Release 3

new_list = create_list_of("Apples Oranges Lollipops")
add_to_list("Lemonade", 2, new_list)
add_to_list("Tomatoes", 3, new_list)
add_to_list("Onions", 1, new_list)
add_to_list("Ice Cream", 4, new_list)
print_list(new_list)
remove_from_list("Lemonade", new_list)
update_quantity("Ice Cream", 1, new_list)
print_list(new_list)

# Release 5

# - I realized how easy it is to think first in the language that comes naturally to me, english!, and then code from there.
# - Using hashes allows us to store an item linked to a quantity, while doing so with an array would require saving string items that hold an item and quantity and which would have to be separated later on
# - A method returns whatever is returned by the last line of code in that method
# - You can pass any data structure to a method as an argument (ie - a hash, string, integer, etc)
# - You can pass information between methods by setting the methods' parameters to be whatever information that method will need
# - This solidifed implicit returns and working with methods in general.
# One thing I'm still confused about is how you might incorporate an optional parameter:
# For example, if you have 3 parameters but want the 2nd one to be optional, how does the computer know upon being passed 2 arguments that the 2nd argument is intended to correspond to the 3rd parameter?








