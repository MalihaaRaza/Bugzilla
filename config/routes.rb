Rails.application.routes.draw do
  root "welcome#index"
  get '/welcome', to: 'welcome#index'
  resources :reports
  resources :projects
  resources :bugs
  resources :welcome
  devise_for :users, :controllers => {
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
