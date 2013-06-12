class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
    	t.belongs_to :user
      t.string :title
      t.text :description
      t.string :status
      t.boolean :active

      t.timestamps
    end
  end
end
