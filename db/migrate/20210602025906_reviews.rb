class Reviews < ActiveRecord::Migration[6.1]
  def change
    create_table "reviews", force: :cascade do |t|
      t.text "comment"
      t.integer "movie_id"
      t.integer "user_id"
      t.integer "rating"
    end
  end
end
