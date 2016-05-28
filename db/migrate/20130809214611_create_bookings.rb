class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      	t.references :car, :null => false
	t.references :user, :null => false
	t.date :start_date
	t.date :end_date
	t.string :destination
	t.timestamps
    end
    
   
  end
end
