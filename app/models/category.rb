class Category < ApplicationRecord
    has_many :services
    has_many :users, through: :services
end
