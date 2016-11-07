Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    get '/invoicexpress/edit', to: 'invoicexpress#edit', as: 'edit_invoicexpress'
    patch '/invoicexpress/update', to: 'invoicexpress#update', as: 'invoicexpress'
  end
end
