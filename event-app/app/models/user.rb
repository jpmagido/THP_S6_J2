class User < ApplicationRecord
	after_create :welcome_send

	def welcome_send
    UserMailer.welcome_email(self).deliver_now
  	end


	has_many :invitations
	has_many :events

	has_secure_password
	validates :email, presence: true
end
