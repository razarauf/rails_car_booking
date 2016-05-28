class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :title, :null => false
      t.text :description
      t.decimal :price, :null => false
      t.string :color, :null => false
      t.string :body_type, :null => false
      t.string :make, :null => false
      t.string :model, :null => false
      t.string :model_year, :null => false

      t.timestamps
    end
  end
end
