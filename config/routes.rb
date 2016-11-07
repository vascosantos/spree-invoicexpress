Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  namespace :admin do
    resources :invoicexpress_configuration, only: [:edit, :update]
  end
end
