class Santa

  attr_reader :ethnicity, :reindeer_ranking
  attr_accessor :gender, :age

  def initialize(gender, ethnicity)
  	puts "Initializing Santa instance ..."
  	@gender = gender
  	@ethnicity = ethnicity
  	@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  	@age = 0
  end

  def speak
  	puts "Hi, I'm the #{@gender} #{@ethnicity} Santa."
  	puts "Ho, ho,  ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
  	puts "That was a good #{cookie_type}!"
  end

  def celebrate_birthday
  	@age += 1
  end

  def get_mad_at(reindeer_name)
  	@reindeer_ranking.delete(reindeer_name)
  	@reindeer_ranking << reindeer_name
  end


end

# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("chocolate chip cookie")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

# 7.times {santas << Santa.new(example_genders.sample, example_ethnicities.sample)}

# santas.each {|santa_instance| santa_instance.speak}

# test_santa = Santa.new(example_genders.sample, example_ethnicities.sample)
# puts test_santa.age
# test_santa.celebrate_birthday
# puts test_santa.age
# p test_santa.reindeer_ranking
# test_santa.get_mad_at("Vixen")
# p test_santa.reindeer_ranking
# puts test_santa.gender
# test_santa.gender = "super-gender"
# puts test_santa.gender
# puts test_santa.ethnicity

50.times do
	santas << Santa.new(example_genders.sample, example_ethnicities.sample)
	santas[-1].age = rand(141)
	puts "Gender: #{santas[-1].gender}. Age: #{santas[-1].age}. Ethnicity: #{santas[-1].ethnicity}."
end
