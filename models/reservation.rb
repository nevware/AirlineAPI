class Reservation < ActiveRecord::Base
  attr_accessor :ticketNumber;

  has_many :passengers
  has_many :connections
end
