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
# output: returns nil (just prints the list)