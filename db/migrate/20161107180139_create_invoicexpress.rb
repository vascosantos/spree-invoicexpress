class CreateInvoicexpress < ActiveRecord::Migration
  def change
    create_table :spree_invoicexpress do |t|
      t.string :api_key
      t.timestamps null: false
    end
  end
end
