class ServicesController < ApplicationController
    before_action :current_service

    def show
    end

    def new
        @categories = Category.all
    end

    def create
        
    end

    private
    def current_service
        @service = Service.find_by(id: params[:id]) || Service.new
    end

    def service_params
        params.request(:service).permit(:title, :description, :ask_offer, :user_id, :category_id)
    end

end
