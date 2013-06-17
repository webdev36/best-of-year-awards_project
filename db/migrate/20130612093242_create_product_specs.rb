class CreateProductSpecs < ActiveRecord::Migration
  def change
    create_table :product_specs do |t|
      t.belongs_to :submission,       :null => false
      t.date :introduction_date

      t.timestamps
    end
    add_index :product_specs, :submission_id
  end
end
