class CreateStopComments < ActiveRecord::Migration
  def change
    create_table :stop_comments do |t|
      t.integer :user_id
      t.integer :stop_id
      t.text :comment
    end
  end
end
