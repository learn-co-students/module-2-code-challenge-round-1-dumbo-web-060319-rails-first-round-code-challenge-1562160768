Rails.application.routes.draw do
  resources :vender_sweets
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get '/sweets', to: "sweets#index", as: "sweets"
  # get '/vendors', to: "vendors#index", as: "vendors"
  resources :sweets
  resources :vendors
  resources :vendors_sweet

end
