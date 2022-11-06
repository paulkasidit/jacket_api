class AddJacketsTable < ActiveRecord::Migration[7.0]
  def change
    create_table :jackets do |t| 
      t.column :jacket_brand, :string 
      t.column :jacket_manufacturer, :string 
      t.column :jacket_category, :string
    end
  end
end

