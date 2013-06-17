class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.string :option_name,       	:null => false
      t.text :option_value,       	:null => false

      t.timestamps
    end
  end
end
