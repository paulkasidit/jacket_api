class AddReviewsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t| 
      t.column :jacket_id, :string
      t.column :author, :string
      t.column :content_body, :string
    end
  end
end
