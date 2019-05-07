class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
=begin
	after_create :welcome_send

	def welcome_send
    UserMailer.welcome_email(self).deliver_now
  	end
=end

	has_many :invitations
	has_many :events

	#has_secure_password
	#validates :email, presence: true
end
