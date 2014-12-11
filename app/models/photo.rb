class Photo < ActiveRecord::Base
  belongs_to :event
end

=begin

t.string   "url"
t.integer  "event_id"
t.datetime "created_at"
t.datetime "updated_at"
	
=end