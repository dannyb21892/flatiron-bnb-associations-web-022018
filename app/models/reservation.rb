class Reservation < ActiveRecord::Base
  belongs_to :guest, :class_name => "User", :foreign_key => "guest_id"
  belongs_to :listing
  has_one :review
  #alias_attribute :user, :guest
end
