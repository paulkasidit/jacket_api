require 'rails_helper'

describe "api index lists all jackets", :type => :request do

  let!(:jackets) { FactoryBot.create_list(:jacket, 50)}

  it 'returns all jackets' do
    get "/jackets"
    expect(JSON.parse(response.body).size).to eq(50)
    expect(response).to have_http_status(200)
  end

end