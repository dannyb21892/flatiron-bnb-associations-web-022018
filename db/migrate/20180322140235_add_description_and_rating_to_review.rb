class AddDescriptionAndRatingToReview < ActiveRecord::Migration
  def change
    add_column :reviews, :description, :string
    add_column :reviews, :rating, :integer
  end
end
