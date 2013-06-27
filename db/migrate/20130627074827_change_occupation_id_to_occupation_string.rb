class ChangeOccupationIdToOccupationString < ActiveRecord::Migration
  def self.up
  	change_column :users, :occupation_id, :string
  	rename_column :users, :occupation_id, :occupation
  end

  def self.down
  	change_column :users, :occupation, :integer
  	rename_column :users, :occupation, :occupation_id
  end
end
