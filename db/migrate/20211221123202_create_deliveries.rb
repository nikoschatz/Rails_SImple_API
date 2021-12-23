class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :title
      t.float :price
      t.string :pickup_location
      t.string :delivery_location
      t.integer :size
      t.string :currency
      t.string :country_code

      t.timestamps
    end
  end
end
