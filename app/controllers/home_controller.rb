class HomeController < ApplicationController
    def index
        @services = Service.all.select { |service| service.user_id != current_user.id }
    end
end
