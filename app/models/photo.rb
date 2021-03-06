# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  url        :string(255)
#  event_id   :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_photos_on_event_id  (event_id)
#

class Photo < ActiveRecord::Base
  belongs_to :event
end
