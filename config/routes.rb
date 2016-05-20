Rails.application.routes.draw do
  get 'users/admin'
  
  get 'users/login'
  
  get 'users/loggingin'
  
  get 'users/profile'
  
  get 'users/register'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'users/activity'

  get 'users/profile'

  get 'users/activity'

  get 'users/edit'

  get 'users/update'

  get 'users/delete'

  get 'about' => 'about#about'

  get 'learning/academia'

  get 'learning/computing'

  get 'learning/other'

  #namespace :tefl do
  #get 'links/index'
  #end
  #
  #namespace :tefl do
  #post 'links/create'
  #end
  #
  #namespace :tefl do
  #get 'links/new'
  #end
  #
  #namespace :tefl do
  #get 'links/destroy'
  #end
  #
  #namespace :tefl do
  #get 'links/edit'
  #end
  #
  #namespace :tefl do
  #get 'links/show'
  #end
  #
  #namespace :tefl do
  #patch 'links/update'
  #end

  get 'projects' => 'projects#index'

  get 'projects/fourletters'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/show'

  get 'posts/index'

  get 'posts/create'

  get 'posts/edit'

  get 'posts/update'

  get 'posts/show'

  get 'home/welcome'
  
  root 'home#welcome'
  
  resources :users
  namespace :tefl do
  resources :links
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
