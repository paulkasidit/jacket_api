require 'rails_helper'

describe Jacket do 

  it { should validate_presence_of :jacket_brand }
  it {should validate_presence_of :jacket_category}
  it {should validate_presence_of :jacket_manufacturer}

end
