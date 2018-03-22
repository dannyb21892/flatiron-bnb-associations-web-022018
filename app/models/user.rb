class User < ActiveRecord::Base
  has_many :listings, :foreign_key => "host_id"#, -> {where User.host}
  has_many :reservations, through: :listings
  has_many :reviews, :foreign_key => "guest_id"
  has_many :trips, :class_name => "Reservation", :foreign_key => "guest_id"

  # def trips
  #   # host_reservations = self.listings.map{|l| l.reservations}.flatten
  #   # guest_reservations = self.reservations.select{|r| !host_reservations.include?(r)}
  #   self.reservations
  # end

end
