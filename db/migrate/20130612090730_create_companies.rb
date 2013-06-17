class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to :submission,       :null => false 
      t.string :name
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.string :website

      t.timestamps
    end
    add_index :companies, :submission_id
  end
end
