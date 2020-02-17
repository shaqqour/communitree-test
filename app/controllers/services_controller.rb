class ServicesController < ApplicationController
    before_action :current_service

    def show
        @service_request_user = @service.user
    end

    def new
        @categories = Category.all
    end

    def create
        current_user.services << Service.create(service_params)
        current_user.save
        flash[:notice] = "Service was placed!"
        redirect_to root_url
    end

    def edit
        if current_user == @service.user
            @categories = Category.all
        else
            update
        end
    end

    def update
        if current_user == @service.user
            @service.update(service_params)
            flash[:notice] = "Service was updated!"
            redirect_to root_url
        elsif @service.offered_user.nil?
            @service.offered_user = current_user
            @service.save
            flash[:notice] = "Service was assigned to you successfuly"
            redirect_to root_url
        elsif @service.offered_user == current_user
            @service.offered_user = nil
            @service.save
            flash[:notice] = "Service was unassigned"
            redirect_to root_url
        else
            flash[:notice] = "Service is assigned to another user"
            redirect_to root_url
        end
    end

    private
    def current_service
        @service = Service.find_by(id: params[:id]) || Service.new
    end

    def service_params
        params.require(:service).permit(:title, :description, :user_id, :category_id)
    end

end
