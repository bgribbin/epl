class AddVotesToClub < ActiveRecord::Migration
  def change
    add_column :clubs, :votes, :integer
    add_index :clubs, :votes 
  end
end
