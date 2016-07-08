# module Shout
# 	def self.yell_angrily(words)
# 		words + " !!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + " !!!" + " =D xD ;)"
# 	end
# end

# puts Shout.yell_angrily("Noooooooo")

# puts Shout.yell_happily("Yeeeeee")

module Shout 
	def yell_angrily(words)
		words + " !!!" + " :("
	end

	def yell_happily(words)
		words + " !!!" + " =D xD ;)"
	end
end

class Adult
	include Shout
end

class Baby
	include Shout
end

jay = Adult.new
puts jay.yell_angrily("Baaaa")

sarah = Baby.new
puts sarah.yell_happily("Eeeee")
