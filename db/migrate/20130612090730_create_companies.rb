class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.belongs_to :project_spec,       :null => false 
      t.string :name
      t.string :title_position
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :email
      t.string :phone
      t.string :website

      t.timestamps
    end
    add_index :companies, :project_spec_id
  end
end
