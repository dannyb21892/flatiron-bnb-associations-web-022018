class ChangeColumnNamesInReservation < ActiveRecord::Migration
  def change
    rename_column :reservations, :check_in_time, :checkin
    rename_column :reservations, :check_out_time, :checkout
  end
end
