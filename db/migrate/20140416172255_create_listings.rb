class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|

      t.string :address
      t.string :neighborhood
      t.string :city
      t.decimal :price, precision: 7, scale: 2
      t.string :home_type
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
