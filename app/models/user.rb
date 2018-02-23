class User < ActiveRecord::Base
# Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

  before_save -> do
    self.uid = SecureRandom.uuid
    skip_confirmation!
  end

  has_one :sitter
  has_many :pets

  # serialize :firstname, Array
  # serialize :lastname, Array
  # serialize :phone1, Array

end
