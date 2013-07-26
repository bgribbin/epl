class AddAttributesToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :goalkeeper, :integer
    add_column :guests, :defender1, :integer
    add_column :guests, :defender2, :integer
    add_column :guests, :defender3, :integer
    add_column :guests, :defender4, :integer
    add_column :guests, :midfielder1, :integer
    add_column :guests, :midfielder2, :integer
    add_column :guests, :midfielder3, :integer
    add_column :guests, :midfielder4, :integer
    add_column :guests, :forward1, :integer
    add_column :guests, :forward2, :integer
  end
end
