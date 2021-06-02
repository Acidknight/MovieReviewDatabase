class Movies < ActiveRecord::Migration[6.1]
  def change
    create_table "movies", force: :cascade do |t|
      t.string "title"
      t.string "release_year"
      t.text "summary"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.integer "user_id"
      t.integer "genre_id"
    end
  end
end
