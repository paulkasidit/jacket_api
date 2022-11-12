class ChangeNameOfColumnJacketPrices < ActiveRecord::Migration[7.0]
  def change
    rename_column :jackets, :prices, :price
  end
end
