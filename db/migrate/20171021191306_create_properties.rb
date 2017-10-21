class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :title
      t.string :property_location
      t.string :area
      t.string :property_type
      t.integer :rooms
      t.integer :maximum_guests
      t.integer :minimum_rent
      t.integer :maximum_rent
      t.decimal :daily_rate
      t.string :photo
      t.string :description
      t.string :usage_rules

      t.timestamps
    end
  end
end
