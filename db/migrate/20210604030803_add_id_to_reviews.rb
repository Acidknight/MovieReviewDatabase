class AddIdToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :review_id, :integer
  end
end
