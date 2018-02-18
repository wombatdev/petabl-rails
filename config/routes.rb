Rails.application.routes.draw do
  resources :visits
  # mount_devise_token_auth_for 'User', at: 'auth'
  resources :pets
  resources :sitters

  root to: 'pets#index'

# From https://www.airpair.com/ruby-on-rails/posts/authentication-with-angularjs-and-ruby-on-rails
    scope '/api' do
        mount_devise_token_auth_for 'User', at: '/auth'
        resources :groups, except: [:new, :edit]
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
