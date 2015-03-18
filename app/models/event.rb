class Event < ActiveRecord::Base
  has_many :registrations
  has_many :ticket_types
end
