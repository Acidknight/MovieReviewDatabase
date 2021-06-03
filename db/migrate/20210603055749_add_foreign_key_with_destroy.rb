class AddForeignKeyWithDestroy < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :reviews, :movies, on_delete: :cascade
  end
end
