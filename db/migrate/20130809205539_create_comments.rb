class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :user, :null => false
      t.references :car, :null => false
      
      t.text :body, :null => false
      
      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :car_id
  end
end
