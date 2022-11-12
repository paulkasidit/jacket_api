class AddPricesToJackets < ActiveRecord::Migration[7.0]
  def change
    add_column :jackets, :prices, :integer
  end
end
