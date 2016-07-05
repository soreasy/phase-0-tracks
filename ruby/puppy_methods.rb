class Puppy

  def initialize
  	puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(num_woofs)
  	num_woofs.times {puts "Woof!"}
  end

  def roll_over
  	puts "*rolls over*"
  end

  def dog_years(hum_yrs)
  	dog_yrs = hum_yrs * 7
  	puts dog_yrs
  	dog_yrs
  end

  def flip
  	puts "*does a flip*"
  end

end

class Lifeguard

	def initialize
		puts "The lifeguard is getting ready to take action in the pool!"
	end

	def makes_save_of(name)
		puts "The lifeguard saved #{name}'s life!"
	end

	def blows_whistle(num_kids)
		puts "The lifeguard blew his/her whistle at #{num_kids} kids!"
	end

end

# soren = Lifeguard.new
# soren.makes_save_of("Tati")
# soren.blows_whistle(4)

name_ary = ['bob', 'yuki', 'tati', 'soren', 'joe', 'jill', 'musa', 'jennifer', 'christopher', 'lisa']

lifeguard_ary = []
50.times {lifeguard_ary << Lifeguard.new}

lifeguard_ary.each do |guard|
	name = name_ary.sample
	guard.makes_save_of(name)
	num_kids = rand(10)
	guard.blows_whistle(num_kids)
end

# zara = Puppy.new
# zara.fetch("ball")
# zara.speak(5)
# zara.roll_over
# zara.dog_years(10)
# zara.flip