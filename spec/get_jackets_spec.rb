require 'rails_helper'

describe "search a jacket by category", :type => :request do

  before do   
    post '/jackets/', params: {:jacket_brand => 'Moncler',
                               :jacket_manufacturer => 'French Company',
                               :jacket_category => 'bomber' } 
  end 

  let!(:jackets) { FactoryBot.create_list(:jacket, 50)}

  before { get '/jackets?jacket_brand=Moncler'}

  it 'returns all jackets' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end
end