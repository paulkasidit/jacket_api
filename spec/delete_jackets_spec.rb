require 'rails_helper' 

describe "delete jacket routes", :type  => :request do

  it "deletes a jacket" do 
    jacket = Jacket.create!(:jacket_brand => 'test_brand', 
      :jacket_manufacturer => 'test_manufacturer', 
      :jacket_category => 'test_category')
    delete "/jackets/#{jacket.id}"
    expect(response).to have_http_status(204)
  end

end


