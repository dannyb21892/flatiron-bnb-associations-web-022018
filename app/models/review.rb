class Review < ActiveRecord::Base
  belongs_to :reservation
  belongs_to :guest, :class_name => "User", :foreign_key => "guest_id"

  #alias_attribute :user, :guest
end
