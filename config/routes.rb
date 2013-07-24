SmRc89::Application.routes.draw do

  get 'products/page/:page' , to: 'products#index'
  # get 'products?page=2' , to: 'products/page/2'

  resources :products

  root :to => 'products#index'

 
end
