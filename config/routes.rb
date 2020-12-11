Rails.application.routes.draw do
  # resources :contacts

  get 'welcome/index'
  get 'welcome/contact'
  get 'contact', to: 'welcome#contact'
  post 'request_contact', to: 'welcome#request_contact'

  get 'tables/index'
  get 'fixtures/index'
  get 'matches/index'

  # sets root to be welcome index page
  root 'welcome#index'
end
