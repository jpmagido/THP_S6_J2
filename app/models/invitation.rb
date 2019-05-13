class Invitation < ApplicationRecord
after_create :confirmation_party_send

def confirmation_party_send
    InvitationMailer.confirmation_inscription_send(self).deliver_now
  	end

	belongs_to :user
	belongs_to :event
end
