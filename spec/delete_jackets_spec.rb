require 'rails_helper' 

describe "delete jacket routes", :type  => :request do

  let!(:jackets) { FactoryBot.create_list(:jacket, 50)}
  before { delete '/jackets/1'}

  it "deletes a jacket" do 
    get '/jackets' 
    expect(response).to have_http_status(200)
  end

end


