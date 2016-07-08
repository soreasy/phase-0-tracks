module Shout
	def self.yell_angrily(words)
		words + " !!!" + " :("
	end

	def self.yell_happily(words)
		words + " !!!" + " =D xD ;)"
	end
end

puts Shout.yell_angrily("Noooooooo")

puts Shout.yell_happily("Yeeeeee")

