# Release 0

# Class - Tennis_Prodigee
# attributes: age, plays_with, secret_weapon, is_pro
# methods: use_secret_weapon, serve(serve_type), turns_pro

# Release 1

class Tennis_Prodigee

	attr_reader :age, :plays_with, :secret_weapon, :name
	attr_accessor :is_pro

	def initialize(age, plays_with, secret_wep, name)
		@age = age
		@plays_with = plays_with
		@secret_weapon = secret_wep
		@name = name
	end

	def use_secret_weapon
		puts "#{@name} used #{@secret_weapon}!"
	end

	def serve(serve_type)
		puts "#{@name} hit a #{serve_type} serve!"
	end

	def turns_pro
		puts "#{@name} just turned pro!!"
	end

end 

# Release 2
# User Interface

# Ask user if they'd like to create another Tennis_Prodigee
# until they reply 'no'
# ask for the age (convert to int), which hand they use, the secret weapon, and name of their Tennis_Prodigee
# instantiate a prodigee with those attributes
# add that instance to an array
# when the user is done making instances, loop through the array and print instances' attributes

prodigees = []
puts "Would you like to create a(nother) tennis prodigee? ('yes' or 'no')"
creation_interest = gets.chomp


while creation_interest != 'no'
	puts "What's the age of your prodigee"
	age = gets.chomp.to_i

	puts "What hand does your prodigee play with?"
	plays_with = gets.chomp

	puts "What's their secret weapon?"
	secret_wep = gets.chomp

	puts "What's their name?"
	name = gets.chomp

	prodigees << Tennis_Prodigee.new(age, plays_with, secret_wep, name)

	puts "Would you like to create a(nother) tennis prodigee? ('yes' or 'no')"
	creation_interest = gets.chomp
end

prodigees.each {|player| puts "#{@name} plays with their #{@plays_with} hand. They are #{@age} years old and their secret weapon is #{@secret_weapon}!"}


