class AddPlayerIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :player_id, :integer
    add_index :answers, :player_id
  end
end
