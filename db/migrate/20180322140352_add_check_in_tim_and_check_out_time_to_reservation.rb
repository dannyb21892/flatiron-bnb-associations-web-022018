class AddCheckInTimAndCheckOutTimeToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :check_in_time, :datetime
    add_column :reservations, :check_out_time, :datetime
  end
end
