class Santa

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

end

# santa1 = Santa.new
# santa1.speak
# santa1.eat_milk_and_cookies("chocolate chip cookie")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

7.times {santas << Santa.new(example_genders.sample, example_ethnicities.sample)}

santas.each {|santa_instance| santa_instance.speak}