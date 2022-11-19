require 'rails_helper' 

describe "delete jacket routes", :type  => :request do

  before do  
    jacket_params = Jacket.create( { :jacket_brand => 'test_brand', 
      :jacket_manufacturer => 'test_manufacturer', 
      :jacket_category => 'test_category'
      })
    review_params = Review.create({ :jacket_id =>  @jacket1.id, 
                                    :author => 'Paul',
                                    :content_body => 'The best jacket ever, the fabric is soft to the touch.'})

    post '/jackets', jacket_params 
    post "jacket/#{jacket_params.id}/review/#{review_params.id}", review_params 
  end 

  it "deletes a jacket" do 
    delete "jacket/#{jacket_params.id}/review/#{review_params.id}"
    expect(response).to have_http_status(200)
  end

end