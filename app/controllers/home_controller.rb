class HomeController < ApplicationController
    def index
        @services = Service.all.select { |service| service.user != current_user }
    end
    
    def home
        redirect_to user_path(current_user)
    end

    def best
        @best_user = User.most_helpful
    end
end
