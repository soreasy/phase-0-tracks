def test(x)
	puts "This is a test #{x}"
	yield
	puts "Back in the method"
end

test("blah") {puts "In the block"}


animals = ["cats", "dogs", "giraffes"]
animal_names = {cat: "Bob", dog: "Joe", giraffe: "Bill"}

p animals
animals.each {|animal| puts "These animals are #{animal}"}

animals.map! {|animal| animal + " are awesome"}
p animals

p animal_names
animal_names.each {|animal,name| puts "The #{animal} is named #{name}."}
p animal_names


def delete_if_array(array)
	array.delete_if {|item| item < 2}
end

p delete_if_array([0,1,2,3,4])

def delete_if_hash(hash)
	hash.delete_if {|key, value| value < 2}
end

p delete_if_hash({a: 1, b: 2, c:3, d:4, e:5, f:0})

def select_if_hash(x)
	x.select { |key, value| value > 2 }
end

p select_if_hash({a: 1, b: 2, c:3, d:4, e:5, f:0})

def select_if_array(x)
	x.select { |item| item > 2 }
end

p select_if_array([0,1,2,3,4])

def keep_if_array(x)
	x.keep_if { |item| item > 2 }
end

p keep_if_array([0,1,2,3,4])

def keep_if_hash(x)
	x.select { |key, value| value > 2 } 
end

p keep_if_hash({a: 1, b: 2, c:3, d:4, e:5, f:0})


