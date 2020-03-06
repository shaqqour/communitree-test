class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook]

  belongs_to :location
  has_many :services
  has_many :categories, through: :services
  #has_many :services_offered, class_name: :Service, foreign_key: :offer_user_id

  validates :username, presence: true
  validates :username, uniqueness: true

  validates :email, presence: true
  validates :email, uniqueness: true

  @@most_helpful_user = nil

  def location_attributes=(location_attributes)
    self.location = Location.find_or_create_by(location_attributes)
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.username = user.email
      user.password = "123456"
      user.location = Location.find_or_create_by(city: "U/A", state: "U/A", country: "U/A")
      #user.name = auth.info.name   # assuming the user model has a name
      #user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails, 
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.most_helpful
    most_number_of_helps = 0
    all.each do |user|
      if user.number_of_helps > most_number_of_helps
        most_number_of_helps = user.number_of_helps
        @@most_helpful_user = user
      end
    end
    @@most_helpful_user
  end

  def number_of_helps
    helps = 0
    services = Service.all
    services.each do |service|
      helps += 1 if service.offered_user == self
    end
    helps
  end

end
