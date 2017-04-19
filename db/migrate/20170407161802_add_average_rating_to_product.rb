class AddAverageRatingToProduct < ActiveRecord::Migration
  def change
    add_column :products, :average_rating, :decimal
  end
end
