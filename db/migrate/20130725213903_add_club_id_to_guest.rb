class AddClubIdToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :club_id, :integer
  end
end
