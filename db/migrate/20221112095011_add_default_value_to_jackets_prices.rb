class AddDefaultValueToJacketsPrices < ActiveRecord::Migration[7.0]
  def change
    change_column_default :jackets, :prices, from: nil, to: 0
  end
end
