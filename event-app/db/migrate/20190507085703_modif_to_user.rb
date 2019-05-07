class ModifToUser < ActiveRecord::Migration[5.2]
  def change

  	remove_column :users, :cb
  	remove_column :users, :email
  	add_column :users, :description, :text

  	remove_column :events, :date_begin
  	add_column :events, :start_date, :datetime
  	add_column :events, :location, :string

  	add_column :invitations, :stripe_customer_id, :string


  end
end
