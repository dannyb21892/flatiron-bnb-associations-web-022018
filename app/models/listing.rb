class Listing < ActiveRecord::Base
  belongs_to :neighborhood
  belongs_to :host, :class_name => "User", :foreign_key => "host_id"
  has_many :reservations
  has_many :reviews, through: :reservations

  # alias_attribute :user, :host

  def guests
    self.reservations.map{|r| r.guest}.uniq
  end
end
