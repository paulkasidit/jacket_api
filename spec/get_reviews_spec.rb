require 'rails_helper' 

describe "get reviews based on jacket id", :type => :request do 

  
  before do  
    post '/jackets/1', params: {:jacket_brand => 'Moncler',
      :jacket_manufacturer => 'French Company',
      :jacket_category => 'bomber' }  
    post 'jackets/1/reviews',   params: { :jacket_id => 1, 
                                :author => 'Paul'
                                :content_body => 'The best jacket ever, the fabric is soft to the touch.'}
    get 'jackets/1/reviews'
  end 

  it 'returns all associated reviews witht the jacket' do
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(200)
  end

end 

