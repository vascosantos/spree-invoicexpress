class RenameInvoicexpressToInvoicexpressConfig < ActiveRecord::Migration
  def change
    rename_table :spree_invoicexpress, :spree_invoicexpress_config
  end
end
