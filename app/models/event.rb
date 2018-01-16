class Event < ApplicationRecord
  belongs_to :user


  validates :event_name, presence: true
  validates :event_date, presence: true
  validates :event_time, presence: true
  validates :attendees, presence: true
  validates :description, presence: true, length: { maximum: 500 }

end
