class ChangeColumnNameInReservation < ActiveRecord::Migration
  def change
    rename_column :reservations, :user_id, :guest_id
  end
end
