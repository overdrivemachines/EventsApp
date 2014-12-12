# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.new(
	email: 'admin@example.com',
	password: 'administrator',
	password_confirmation: 'administrator'
)
admin.save!

me = User.new(
	email: 'get.dipen@gmail.com',
	password: 'happychico',
	password_confirmation: 'happychico'
)
me.save!

# Event.create([
# 	{
# 		title: 'Former art faculty exhibit',
# 		fromDate: ,
# 		fromTime: ,
# 		untilTime: ,
# 		untilDate: ,
# 		address1: ,
# 		address2: ,
# 		zip: ,
# 		description: ,
# 		url: ,
# 		email: ,
# 		phone: 
# 	}
# ])