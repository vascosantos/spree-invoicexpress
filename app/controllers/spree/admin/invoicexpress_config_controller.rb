module Spree
  module Admin
    class InvoicexpressConfigController < ResourceController

      def edit
        @invoicexpress_config = Spree::InvoicexpressConfig.first || Spree::InvoicexpressConfig.new
      end

      def update
        @invoicexpress_config = Spree::InvoicexpressConfig.first
        if @invoicexpress_config
          if @invoicexpress_config.update_attributes(invoicexpress_config_params)
            flash[:success] = Spree.t(:successfully_updated, resource: Spree.t(:invoicexpress_config))
          else
            flash[:error] = Spree.t(:could_not_update_invoicexpress_config)
          end
        else
          @invoicexpress_config = Spree::InvoicexpressConfig.new(invoicexpress_config_params)
          if @invoicexpress_config.save
            flash[:success] = Spree.t(:successfully_created, resource: Spree.t(:invoicexpress_config))
          else
            flash[:error] = Spree.t(:could_not_create_invoicexpress_config)
          end
        end
        redirect_to spree.admin_edit_invoicexpress_config_path
      end

      private
      def invoicexpress_config_params
        params.require(:invoicexpress_config).permit(:api_key, :account_name)
      end

    end
  end
end