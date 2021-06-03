class AddAttributesToReviews < ActiveRecord::Migration[6.1]
  def change
    add_column :reviews, :review_date, :datetime
    add_column :reviews, :created_at, :datetime
    add_column :reviews, :updated_at, :datetime
  end
end
