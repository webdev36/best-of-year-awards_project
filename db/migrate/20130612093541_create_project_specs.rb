class CreateProjectSpecs < ActiveRecord::Migration
  def change
    create_table :project_specs do |t|
      t.belongs_to :submission,       :null => false
      t.string :market_segments
      t.date :completion_date
      t.string :lead_designer
      t.string :architect
      t.string :additional_designers
      t.string :other_resources
      t.string :othere_resources_title
      t.string :square_footage

      t.timestamps
    end
    add_index :project_specs, :submission_id
  end
end
