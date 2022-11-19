class Jacket < ApplicationRecord
  validates :jacket_brand, presence: true 
  validates :jacket_category, presence: true 
  validates :jacket_manufacturer, presence: true
  has_many :reviews, dependent: :destroy 
  
  def self.search(jacket_brand) 
    Jacket.where("jacket_brand = ?", ("#{jacket_brand}").titlecase)
  end

end