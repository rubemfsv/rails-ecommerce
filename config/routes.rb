Rails.application.routes.draw do

  post '/rate' => 'rater#create', :as => 'rate'
  get 'backoffice', to: 'backoffice/dashboard#index'

  namespace :backoffice do
    resources :send_mail, only: [:edit, :create]
    resources :categories, except: [:show]
    resources :diagrams, only: [:index]
    resources :admins, except: [:show]
    get 'dashboard', to: 'dashboard#index'
#    get 'admins/index'
  end
  namespace :site do
    get 'home', to: 'home#index'
    get 'search', to: 'search#ads'

    namespace :profile do
      resources :dashboard, only: [:index]
      resources :ads, only: [:index, :edit, :update, :new, :create]
      resources :data, only: [:edit, :update]
    end

    resources :ad_detail, only: [:index, :show]
    resources :categories, only: [:show]
    resources :comments, only: [:create]
  end

  devise_for :admins, :skip => [:registrations]
  devise_for :members, controllers: {
    sessions: 'members/sessions',
    registrations: 'members/registrations'
  }

  root 'site/home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
