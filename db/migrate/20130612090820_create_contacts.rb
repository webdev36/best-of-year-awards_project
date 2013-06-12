class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.belongs_to :submission
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :job_title
      t.string :company
      t.string :street_address1
      t.string :street_address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :fax

      t.timestamps
    end
    add_index :contacts, :submission_id
  end
end
