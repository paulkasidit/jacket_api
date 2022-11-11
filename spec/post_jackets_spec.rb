require 'rails_helper'

describe "post a jacket route", :type => :request do

  before do
    post '/jackets', params: { :jacket_brand => 'test_brand', 
                               :jacket_manufacturer => 'test_manufacturer', 
                               :jacket_category => 'test_category'}
  end

  it 'returns the jacket brand' do
    expect(JSON.parse(response.body)['jacket_brand']).to eq('test_brand')
  end

  it 'returns the jacket manufacturer' do
    expect(JSON.parse(response.body)['jacket_manufacturer']).to eq('test_manufacturer')
  end

  it 'returns the jacket category' do
    expect(JSON.parse(response.body)['jacket_category']).to eq('test_category')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end

