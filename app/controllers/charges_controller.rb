class ChargesController < ApplicationController
before_action :authenticate_user!
def new
  @amount = Event.find(1).price
end

def create
  # Amount in cents
  @amount = Event.find(1).price

  customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
  })

  charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @amount,
    description: 'Rails Stripe customer',
    currency: 'usd',
  })

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
	
end
