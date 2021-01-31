class Event < ApplicationRecord
  belongs_to :host, foreign_key: 'hosted_id', class_name: 'User'

  has_many :event_attendings, foreign_key: 'attended_event_id'
  has_many :attendees, through: :event_attendings
end
