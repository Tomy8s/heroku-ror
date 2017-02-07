Rails.application.routes.draw do

  get 'about/about' => 'about#about'

  get 'learning/academia'

  get 'learning/other'

  get 'projects/index' => 'projects#index'

  get 'projects/fourletters'

  get 'projects/thermostat'

  get 'projects/bowling'

  get 'home/welcome'
  
  root 'home#welcome'
  
  namespace :learning do
    namespace :computing do
      resources :instructors, :sites
    end
    resources :computings
  end
  
  resources :users
  
  namespace :tefl do
    resources :links
  end

  namespace :instakilo do
    root 'posts#index'
    resources :posts do 
      resources :comments
      resources :likes
      resources :dislikes
    end
  end
end
