module Spree
  class Invoicexpress < ActiveRecord::Base
    self.table_name = "spree_invoicexpress"

    validates :api_key, presence: true
  end
end