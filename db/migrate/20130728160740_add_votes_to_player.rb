class AddVotesToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :votes, :integer
    add_index :players, :votes
  end
end
