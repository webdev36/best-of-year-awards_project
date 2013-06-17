class CreateOrderSubmissions < ActiveRecord::Migration
  def change
    create_table :order_submissions do |t|
      t.belongs_to :order,       			:null => false
      t.belongs_to :submission,       :null => false
      

      t.timestamps
    end
    add_index :order_submissions, :order_id
    add_index :order_submissions, :submission_id    
  end
end
