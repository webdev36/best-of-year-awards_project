class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :product_spec
      t.belongs_to :project_spec
      t.string :name
      t.string :title_position
      t.string :email
      t.string :phone

      t.timestamps
    end
    add_index :contacts, :product_spec_id
    add_index :contacts, :project_spec_id
  end
end
