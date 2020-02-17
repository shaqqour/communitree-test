class Service < ApplicationRecord
    belongs_to :user
    belongs_to :category

    def offered_user
        if self.offer_user_id
            User.find_by(id: offer_user_id)
        end
    end

    def offered_user=(user)
        if user
            self.offer_user_id = user.id
        else
            self.offer_user_id = nil
        end
    end

end
