class Jacket < ApplicationRecord
  validates :jacket_brand, presence: true 
  validates :jacket_category, presence: true 
  validates :jacket_manufacturer, presence: true
  
  def self.search(jacket_brand) 
    Jacket.where("jacket_brand = ?", ("#{jacket_brand}").titlecase)
  end

end