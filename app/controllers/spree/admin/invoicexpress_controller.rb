module Spree
  module Admin
    class InvoicexpressController < ResourceController

      def edit
        @invoicexpress = Spree::Invoicexpress.first || Spree::Invoicexpress.new
      end

      def update
      end

    end
  end
end