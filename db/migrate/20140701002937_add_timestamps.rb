class AddTimestamps < ActiveRecord::Migration
  def change
    add_column(:roadtrip_comments, :created_at, :datetime)
    add_column(:roadtrip_comments, :updated_at, :datetime)

    add_column(:roadtrips, :created_at, :datetime)
    add_column(:roadtrips, :updated_at, :datetime)

    add_column(:stop_comments, :created_at, :datetime)
    add_column(:stop_comments, :updated_at, :datetime)
  end
end
