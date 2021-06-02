class Genres < ActiveRecord::Migration[6.1]
  def change
    create_table "genres", force: :cascade do |t|
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
