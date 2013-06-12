class CreateSubmissionCategories < ActiveRecord::Migration
  def change
    create_table :submission_categories do |t|
      t.belongs_to :submission
      t.belongs_to :category

      t.timestamps
    end
    add_index :submission_categories, :submission_id
    add_index :submission_categories, :category_id
  end
end
