Rails.application.routes.draw do
  resources :contacts

  get 'welcome/index'
  get 'welcome/contact'
  get 'contact', to: 'welcome#contact'
  post 'request_contact', to: 'welcome#request_contact'

  get 'tables/index'
  get 'fixtures/index'
  get 'matches/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
