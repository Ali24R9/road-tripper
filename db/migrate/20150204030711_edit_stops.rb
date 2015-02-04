class EditStops < ActiveRecord::Migration
  def change
    add_column :stops, :stop_number, :integer
  end
end
