class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :location
      t.integer :trip_id

      t.timestamps
    end
  end
end
