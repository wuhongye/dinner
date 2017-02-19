Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'

  resources :users

  resources :sessions

  namespace :admin do
    root 'users#index'
end

end
