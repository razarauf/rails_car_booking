class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => false
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.string :address, :null => false
      t.string :license_number, :null => false
      t.string :phone_number

      t.timestamps
    end
  end
end
