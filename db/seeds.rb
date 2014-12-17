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

# Events
# To save dates: Date.new(yyyy, mm, dd). 
# 	Eg: fromDate: Date.new(2014, 12, 15)
# Display date in readable format: d.strftime('%a %d %b %Y')    #=> "Sun 04 Feb 2001"
# To save time: Time.new(year, month, day, hour, min) 
# 	Eg: Time.new(d.year, d.mon, d.day, 4, 10)

d = Date.new(2014, 12, 15)
t = Time.new(2014, 12, 15, 14, 00)
e = Event.new(
	title: 'Former art faculty exhibit',
	fromDate: d,
	fromTime: t,
	untilTime: t + 3600,
	untilDate: d,
	address1: 'BMU Auditorium',
	address2: '',
	zip: '95926',
	description: 'The public is invited to the <strong>College of Behavioral & Social Sciences Faculty Colloquium</strong> to be held in the BMU Auditorium on Tuesday, November 18th from 5:30 – 7:30 pm. Dr. Ryan Patten, Department of Political Science, will deliver the keynote address.',
	url: '',
	email: '',
	phone: '5305880014'
)
e.save!

d = Date.new(2014, 12, 15)
t = Time.new(2014, 12, 15, 11, 00)
Event.create(
	{
		title: 'California Guitar Trio & Montreal Guitar Trio are coming to CSU, Chico!',
		fromDate: d,
		fromTime: t,
		untilTime: t + 7200,
		untilDate: d,
		address1: 'BMU Auditorium',
		address2: '',
		zip: '95926',
		description: 'Dr. Patten is an active scholar; in addition to his recent book, he published six peer-reviewed journal articles in 2013 and 2014. Dr. Patten has a strong record of active publication in numerous peer-reviewed journals and has given presentations to criminology societies nationally and internationally, most recently in Budapest, Hungary.',
		url: '',
		email: '',
		phone: '5305880014'
	}
)

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