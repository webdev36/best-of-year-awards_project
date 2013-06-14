class CreateOrderSubmissions < ActiveRecord::Migration
  def change
    create_table :order_submissions do |t|
      t.belongs_to :order
      t.belongs_to :submission
      

      t.timestamps
    end
    add_index :order_submissions, :order_id
    add_index :order_submissions, :submission_id    
  end
end
