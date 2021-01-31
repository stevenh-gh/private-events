class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true

  has_many :hosted_events, foreign_key: 'hosted_id', class_name: 'Event'

  has_many :event_attendings, foreign_key: 'attendee_id'
  has_many :attended_events, through: :event_attendings 
end
