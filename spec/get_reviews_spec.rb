require 'rails_helper' 

describe "get reviews based on jacket id", :type => :request do 

  
  before do  

    jacket_params = Jacket.create( { :jacket_brand => 'test_brand', 
      :jacket_manufacturer => 'test_manufacturer', 
      :jacket_category => 'test_category'
      })

    review_params = Review.create({ :jacket_id =>  jacket_params.id, 
                                    :author => 'Paul',
                                    :content_body => 'The best jacket ever, the fabric is soft to the touch.'})

    post '/jackets', jacket_params 
    post "jacket/#{jacket_params.id}/review/#{review_params.id}", review_params 
  end

  it 'returns all associated reviews witht the jacket' do
    get "jacket/#{jacket_params.id}/review/#{review_params.id}", review_params  
    expect(JSON.parse(response.body).size).to eq(1)
  end

  it 'returns status code 200' do
    get "jacket/#{jacket_params.id}/review/#{review_params.id}", review_params  
    expect(response).to have_http_status(200)
  end

end 

