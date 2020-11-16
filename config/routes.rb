Rails.application.routes.draw do
  resources :results
  get 'welcome/index'
  get 'table/index'
  get 'results/index'
  post 'welcome/contact'
  post 'table/index'
  post 'results/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
