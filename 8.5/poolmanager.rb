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
		fname VARCHAR(255),
		age INT,
		apt VARCHAR(255),
		guest_pass_remaining VARCHAR(255)
	)
SQL

db.execute(create_table_cmd)

