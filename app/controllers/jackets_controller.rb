class JacketsController < ApplicationController
    
    before_action :authenticate_user!
    
    def index
      @jackets = Jacket.all 
      json_response(@jackets)
    end

    def search 
      jacket_brand = params[:jacket_brand]
      @jackets = Jacket.search(jacket_brand)
      json_response(@jackets)
    end 
  
    def show
      @jacket = Jacket.find(params[:id])
      json_response(@jacket)
    end
  
    def create
      @jacket = Jacket.create(jacket_params)
      json_response(@jacket)
    end
  
    def update
      @jacket = Jacket.find(params[:id])
      @jacket.update(jacket_params)
    end
  
    def destroy
      @jacket = Jacket.find(params[:id])
      @jacket.destroy
    end
  
    private
    def jacket_params
      params.permit(:jacket_brand, :jacket_manufacturer, :jacket_category)
    end
end
