Rails.application.routes.draw do
  #resources :welcome

  resources :contacts

  get 'welcome/index'
  get 'welcome/contact'
  get 'welcome/new', to: 'welcome#new'
  get 'tables/index'
  get 'fixtures/index'
  get 'matches/index'

  post 'welcome/index' => 'welcome#index'
  post 'welcome/contact' => 'welcome#contact'
  post 'tables/index' => 'tables#index'
  post 'fixtures/index' => 'fixtures#index'
  post 'matches/index' => 'matches#index'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
