class Event < ApplicationRecord
  belongs_to :host, foreign_key: 'hosted_id', class_name: 'User'
end
