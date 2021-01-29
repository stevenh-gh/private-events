class User < ApplicationRecord
  validates :name, presence: true
  validates :password, presence: true

  has_many :hosted_events, foreign_key: 'hosted_id', class_name: 'Event'
end
