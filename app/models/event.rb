# == Schema Information
#
# Table name: events
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  fromDate    :date
#  fromTime    :time
#  untilTime   :time
#  untilDate   :date
#  address1    :string(255)
#  address2    :string(255)
#  zip         :string(255)
#  description :text
#  url         :string(255)
#  email       :string(255)
#  phone       :string(255)
#  user_id     :integer
#  created_at  :datetime
#  updated_at  :datetime
#

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
