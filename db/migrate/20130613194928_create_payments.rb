class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.belongs_to :user
      t.belongs_to :order
      t.string :transaction_id    #From authorize.Net
      t.string :refund_id
      t.string :price_subtotal
      t.string :price_tax
      t.string :price_refund
      t.string :price_total
      t.string :status
      t.string :ccard_last4
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :region
      t.string :post_code
      t.string :country


      t.timestamps
    end
    add_index :payments, :user_id
    add_index :payments, :order_id
  end
end
