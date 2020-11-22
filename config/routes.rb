Rails.application.routes.draw do
  #resources :matches
  get 'welcome/index'
  get 'welcome/contact'
  get 'table/index'
  get 'fixtures/index'
  get 'fixtures/edit'
  get 'fixtures/result'
  get 'fixtures/new'
  get 'matches/index'
  get 'matches/new'
  post 'welcome/index'
  post 'welcome/contact'
  post 'table/index'
  post 'fixtures/index'
  post 'fixtures/edit'
  post 'fixtures/result'
  post 'fixtures/new'
  post 'matches/index' => 'matches#index'
  post 'matches/new'
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
