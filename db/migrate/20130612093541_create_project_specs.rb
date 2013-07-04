class CreateProjectSpecs < ActiveRecord::Migration
  def change
    create_table :project_specs do |t|
      t.belongs_to :submission,       :null => false
      
      t.string :firm_name
      t.string :firm_address

      t.string :name
      t.string :lead_designer
      t.string :architect
      t.text :team_members
      t.text :description
      t.date :completion_date
      t.string :square_footage
      t.text :primary_sources      

      t.timestamps
    end
    add_index :project_specs, :submission_id
  end
end
