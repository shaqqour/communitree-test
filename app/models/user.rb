class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  belongs_to :location
  has_many :services
  has_many :categories, through: :services

  def location_attributes=(location_attributes)
    self.location = Location.find_or_create_by(location_attributes)
  end

end
