class RenameStopComments < ActiveRecord::Migration
  def change
    rename_table :stop_comments, :stops_comments
  end
end
