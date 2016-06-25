hsh = {}
hsh[:blah] = "string"
hsh[:blah1] = "string1"
p hsh

hsh.each {|name, fake_name| puts "#{name.to_s} is #{fake_name}"}
