class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
    	t.belongs_to :user,       :null => false
      t.string :title,          :null => false
      t.text :description
      t.string :status,         :null => false, :default => 'editing'
      t.string :submission_type,           :null => false
      t.boolean :active,        :null => false, :default => false

      t.timestamps
    end
  end
end
