class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.integer :kind
      t.integer :sort_id
      t.references :parent
      t.timestamps
    end
  end
end
