class AddAccountNameToInvoicexpress < ActiveRecord::Migration
  def change
    add_column :spree_invoicexpress, :account_name, :string
  end
end
