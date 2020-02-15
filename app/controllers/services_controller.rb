class ServicesController < ApplicationController
    before_action :current_service

    def show
    end

    def new
        @categories = Category.all
    end

    def create
        current_user.services << Service.create(service_params)
        current_user.save
        redirect_to root_url
    end

    def edit
        @categories = Category.all
    end

    def update
        @service.update(service_params)
        redirect_to root_url
    end

    private
    def current_service
        @service = Service.find_by(id: params[:id]) || Service.new
    end

    def service_params
        params.require(:service).permit(:title, :description, :user_id, :category_id)
    end

end
