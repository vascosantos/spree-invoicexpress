module Spree
  module Admin
    class InvoicexpressController < ResourceController

      def edit
        @invoicexpress = Spree::Invoicexpress.first || Spree::Invoicexpress.new
      end

      def update
        @invoicexpress = Spree::Invoicexpress.first
        if @invoicexpress
          if @invoicexpress.update_attributes(invoicexpress_params)
            flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:invoicexpress))
          else
            flash[:error] = Spree.t(:could_not_update_invoicexpress)
          end
        else
          @invoicexpress = Spree::Invoicexpress.new(invoicexpress_params)
          if @invoicexpress.save
            flash[:success] = Spree.t(:successfully_created, resource: Spree.t(:invoicexpress))
          else
            flash[:error] = Spree.t(:could_not_create_invoicexpress)
          end
        end
        redirect_to spree.admin_edit_invoicexpress_path
      end

      private
      def invoicexpress_params
        params.require(:invoicexpress).permit(:api_key)
      end

    end
  end
end