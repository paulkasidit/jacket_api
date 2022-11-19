require 'rails_helper' 

describe "delete jacket routes", :type  => :request do

  let!(:jackets) { FactoryBot.create_list(:jacket, 50)}

  it "deletes a jacket" do 
    delete '/jackets/1'
    expect(response).to have_http_status(200)
  end

end


