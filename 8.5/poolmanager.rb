# The following is meant to help pool managers store information about
# the residents attending their pool.
# This program should allow managers to store persistent data about
# their residents, such as: age, apt #, name, and the number
# of guest passes they have remaining.
# Users should be able to view the data (all at once or selectively), update
# information, delete information, or add information.

require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("pool_residents.db")

create_table_cmd = <<-SQL
	CREATE TABLE IF NOT EXISTS residents(
		id INTEGER PRIMARY KEY,
		name VARCHAR(255),
		age INT,
		apt VARCHAR(255),
		guest_pass_remaining VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)

def add_resident(db, name, age, apt, guest_pass_remaining)
	db.execute("INSERT INTO residents (name, age, apt, guest_pass_remaining) VALUES (?, ?, ?, ?)", [name, age, apt, guest_pass_remaining])
end

apt_nums = (1..15).to_a
apt_letters = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k','l','m','n', 'o','p']
ages = (1..100).to_a
guest_passes = (1..10).to_a

# Initial population of 10 residents
# 10.times do
# 	apt = apt_nums.sample.to_s + apt_letters.sample.upcase
# 	add_resident(db, Faker::Name.name, ages.sample, apt, guest_passes.sample)
# end

### USER INTERFACE ###
done = false
while !done
	puts
	puts "Please enter the action you'd like to perform, entering only the action's abbreviation in the parenthetical."
	puts "You may add (add), delete (del), update (upd), or view (view) the residents database. Or enter (done)."

	user_action = gets.chomp

	if user_action == 'done'
		done = true
		break
	elsif user_action == 'view'
		puts
		puts "Would you like to view the entire database (entire) or a specific resident's entry (resident)?"
		reply = gets.chomp
		if reply == 'entire'
			puts
			residents = db.execute("SELECT * FROM residents")
			residents.each do |resi|
				puts "#{resi[1]} is #{resi[2]} years old, lives in apt #{resi[3]} and has #{resi[4]} guest passes left."
			end
		elsif reply == 'resident'
			puts
			puts "What is the resident's name?"
			name = gets.chomp
			puts
			resident = db.execute("SELECT * FROM residents WHERE name = '#{name}'")
			puts "#{resident[0][1]} is #{resident[0][2]} years old, lives in apt #{resident[0][3]} and has #{resident[0][4]} guest passes left."
		end
	elsif user_action == 'add'
		puts
		puts "What is the name of the resident you'd like to add?"
		name = gets.chomp
		puts "What is the age of the resident?"
		age = gets.chomp.to_i
		puts "What apartment does this resident live in?"
		apt = gets.chomp
		add_resident(db, name, age, apt, 10)
	elsif user_action == 'upd'
		puts
		puts "What is the name of the resident whose information you'd like to update?"
		name = gets.chomp
		puts "Would you like to update their age (age), apt (apt), or number of guest passes (guest passes)?"
		reply = gets.chomp
		if reply == 'age'
			puts "What would you like their new age to be?"
			new_age = gets.chomp.to_i
			db.execute("UPDATE residents SET age=? WHERE name=?", [new_age, name])
		elsif reply == 'apt'
			puts "What would you like their new apt to be?"
			new_apt = gets.chomp
			db.execute("UPDATE residents SET apt=? WHERE name=?", [new_apt, name])
		elsif reply == 'guest passes'
			puts "How many guest passes should they now have?"
			num_passes = gets.chomp.to_i
			db.execute("UPDATE residents SET guest_pass_remaining=? WHERE name=?", [num_passes, name])
		end
	elsif user_action == 'del'
		puts
		puts "What is the name of the resident you'd like to remove?"
		name = gets.chomp
		db.execute("DELETE FROM residents WHERE name=?", [name])
	else
		puts
		puts "Please provide valid input"
	end
end




