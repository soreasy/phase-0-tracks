# My data structure will be a collection of different pools in New York,
# with different sorts of creatures in the poools,


NY_pools = {

	bronx_pool: {
		pool_capacity: 100,
		guest_info: {
			num_guests: 40,
			guest_types: [
				"lions",
				"tigers",
				"bears",
				"humans"
			]
		}
	},

	bklyn_pool: {
		pool_capacity: 150,
		guest_info: {
			num_guests: 65,
			guest_types: [
				"snakes",
				"giraffes",
				"ligers",
				"aliens",
				"people"
			]
		}
	}
}

p NY_pools[:bronx_pool][:pool_capacity]

p NY_pools[:bronx_pool][:guest_info][:guest_types]

p NY_pools[:bklyn_pool][:guest_info][:guest_types][1]

p NY_pools[:bklyn_pool][:guest_info][:num_guests]

p NY_pools
