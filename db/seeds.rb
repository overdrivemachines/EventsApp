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

d = Date.new(2014, 12, 22)
t = Time.new(2014, 12, 22, 14, 00)
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

Event.create([
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
])

d = Date.new(2014, 12, 29)
t = Time.new(2014, 12, 29, 11, 00)
Event.create([
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
	},
	{
		title: 'Will Your Department Be Closed December 29th through January 2nd?',
		fromDate: d,
		fromTime: t,
		untilTime: t + 7200,
		untilDate: d,
		address1: 'BMU Auditorium',
		address2: '',
		zip: '95926',
		description: 'The Departments of Shipping & Receiving and Printing & Mail Services would like to request email notification of department closures for the period of December 29th through January 2nd .
 
Please email Cody Johns (cmjohns@csuchico.edu) with your department’s expected closure dates. All packages, mail, and print deliveries will be held until your return.
 
If you have any questions or concerns you may call Mail Services at campus Extension 5326.',
		url: 'http://www.csuchico.edu/prnt/mail_services/index.shtml',
		email: 'cmjohns@csuchico.edu',
		phone: '5305880014'
	}
])

e = Event.new
e.title = 'CSU, Chico Employees in Need of Donated Leave Credits'
e.fromDate = d
e.fromTime = t
e.untilTime = t + 3600
e.untilDate = d
e.address1 = 'Human Resources Service Center (Kendall 220)'
e.address2 = ''
e.zip = '95926'
e.description = 'The following employees are in need of donated leave credits:
 
ERIC CASEY (Staff, Facilities Management and Services)
DONNA KILLIINGSWORTH* (Staff, Humanities and Fine Arts)
MARIO MENA (Staff, Housing and Food Services)
MARSHA OSBORNE* (Staff, Graduate Studies)
GLENN SIMMONS (Staff, Facilities Management and Services)
BRIAN TIVEL (Staff, Facilities Management and Services)
KELLI TRNKA (Staff, Information Technology Support Services)
 
*Only vacation credits may be donated for purpose of family care leave.
 
If you wish to donate leave credits, you will need to sign the a donation form - which is available at the Human Resources Service Center (Kendall 220).   BECAUSE YOUR SIGNATURE IS REQUIRED, YOUR DONATIONS CANNOT BE ACCEPTED OVER THE PHONE OR VIA E-MAIL.'
e.url = ''
e.email = ''
e.phone = '5305880014'
e.save!

d = Date.new(2015, 1, 7)
t = Time.new(2014, 1, 7, 11, 00)
Event.create([
	{
		title: 'California Guitar Trio & Montreal Guitar Trio are coming to CSU, Chico!Identity Finder Reminder',
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
	},
	{
		title: 'Identity Finder Reminder',
		fromDate: d,
		fromTime: t,
		untilTime: t + 7200,
		untilDate: d,
		address1: 'BMU Auditorium',
		address2: '',
		zip: '95926',
		description: 'Identity theft is often big news and can be very costly. Identity Finder is an important tool that helps you protect yourself and our students, faculty, and staff from identity theft. Identity Finder scans your computer for protected data (such as Social Security Numbers, driver’s license numbers, credit card and bank account numbers) and allows you to securely remove it.
 
Identity Finder will be automatically installed on campus computers on January 7th, but you can reduce the risk of identity theft early by downloading and running it now.',
		url: 'http://www.csuchico.edu/identityfinder',
		email: '',
		phone: '5305880014'
	}
])

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

