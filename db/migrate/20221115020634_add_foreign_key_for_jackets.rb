class AddForeignKeyForJackets < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reviews, :jackets
  end
end
