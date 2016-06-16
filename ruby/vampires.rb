puts "How many employees will be processed? (Please enter an integer)"
num_to_process = gets.chomp.to_i
x = 0

until x == num_to_process
	x += 1
	puts "What is your name?"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	birth_year = gets.chomp.to_i

	puts "We have lots of garlic bread. Want some? (y/n)"
	garlic_desired = gets.chomp

	puts "Would you like to enroll in health insurance? (y/n)"
	health_insurance_desired = gets.chomp

	latest_allergy = "blah"
	puts "Please list your allergies one at a time. Enter 'done' when finished"
	until (latest_allergy == "sunshine") || (latest_allergy == "done")
		latest_allergy = gets.chomp
	end

	vampire_likelihood = "Results inconclusive."

	if ((2016 - birth_year) == age) && ((garlic_desired == "y") || (health_insurance_desired == "y"))
		vampire_likelihood = "Probably not a vampire."
	end

	if latest_allergy == "sunshine"
		vampire_likelihood = "Probably a vampire."
	end

	if ((2016 - birth_year) != age) && ((garlic_desired == "n") || (health_insurance_desired == "n"))
		vampire_likelihood = "Probably a vampire."
	end

	if ((2016 - birth_year) != age) && (garlic_desired == "n") && (health_insurance_desired == "n")
		vampire_likelihood = "Almost certainly a vampire."
	end

	if (name == "Drake Cula") || (name == "Tu Fang")
		vampire_likelihood = "Definitely a vampire."
	end

	puts
	puts "The vampire likelihood test shows: #{vampire_likelihood}"

end

puts
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends =D"


