class Event < ActiveRecord::Base
	belongs_to :user
	has_many :photos

	validates :title, presence: true,
						length: { in: 15..110 }
	validates :fromDate, presence: true
	validates :fromTime, presence: true
	validates :untilTime, presence: true
	validates :untilDate, presence: true
	validates :address1, presence: true
	validates :zip, presence: true
	validates :description, presence: true
	validates :phone, presence: true

	# TODO: validates :user_id

	validate :event_dates_make_sense

	private
	def event_dates_make_sense
		today = Date.today
		difference = fromDate - today
		if difference.to_i < 0
			errors.add(:fromDate, 'has to be today or in the future.')
		end
	end
end

=begin

t.string   "title"
t.date     "fromDate"
t.time     "fromTime"
t.time     "untilTime"
t.date     "untilDate"
t.string   "address1"
t.string   "address2"
t.string   "zip"
t.string   "description"
t.string   "url"
t.string   "email"
t.string   "phone"
t.integer  "user_id"
t.datetime "created_at"
t.datetime "updated_at"

=end