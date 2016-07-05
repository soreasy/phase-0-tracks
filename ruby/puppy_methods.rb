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

zara = Puppy.new
zara.fetch("ball")
zara.speak(5)
zara.roll_over
zara.dog_years(10)
zara.flip