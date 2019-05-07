class Event < ApplicationRecord
after_create :confirmation_party_send

def confirmation_party_send
    EventMailer.confirmation_party_send(self).deliver_now
  	end


	has_many :invitations
	belongs_to :user

	#validates :start_date, presence: true
	#validates :title, presence: true, length: { in: 5..140}
	#validates :description, presence: true, length: { in: 20..1000}
	#validates :duration, :presence => true
	#validates :location, :presence => true
	#validates :price, numericality: { only_integer: true}

=begin
	validates_numericality_of :duration, :if => :condition_testing?
	

	def condition_testing?
		if (:duration > 5)
			return true
		else
			return false
		end
	end
=end


end
