class Event < ActiveRecord::Base
	belongs_to :user
	has_many :photos
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