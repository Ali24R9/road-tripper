class CreateStops < ActiveRecord::Migration
  def change
    create_table :stops do |t|
      t.string :location
      t.integer :upvote
      t.integer :latitude
      t.integer :longitude

      t.timestamps

    end
  end
end
