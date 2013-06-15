class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.integer :kind,          :null => false, :default => 0
      t.integer :sort_id,       :null => false, :default => 99
      t.references :parent
      t.timestamps
    end
  end
end
