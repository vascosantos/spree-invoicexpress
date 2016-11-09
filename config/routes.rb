Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    get '/invoicexpress_config/edit', to: 'invoicexpress_config#edit', as: 'edit_invoicexpress_config'
    patch '/invoicexpress_config/update', to: 'invoicexpress_config#update', as: 'invoicexpress_config'
  end
end
