Rails.application.routes.draw do
  resources :results
  get 'result/Result'
  get 'welcome/fixtures'
  get 'welcome/tables'
  get 'welcome/contact'
  get 'welcome/index'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
