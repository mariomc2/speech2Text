Rails.application.routes.draw do
  
  root "hablas#index"
  
  resources :hablas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
