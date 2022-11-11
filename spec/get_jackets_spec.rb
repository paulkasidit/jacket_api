require 'rails_helper'

describe "get all jackets route", :type => :request do
  let!(:jackets) { FactoryBot.create_list(:quote, 20)}

  before { get '/jackets'}

  it 'returns all jackets' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end