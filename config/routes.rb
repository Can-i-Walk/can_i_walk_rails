Rails.application.routes.draw do

  root 'authentication#oauth'

  get 'authentication/password_reset'
  put 'authentication/password_update'
  get 'authentication/confirmation'
  get 'authentication/decline'
  post 'authentication/login'
  delete 'authentication/logout'

  get 'users/dashboard', defaults: {format: 'json'}
  get 'places/map_info', defaults: {format: 'json'}
  get 'places/places_of_interest', defaults: {format: 'json'}
  get 'trips/destination_generator', defaults: {format: 'json'}
  resources :ratings, except: [:new, :edit]
  resources :places, except: [:new, :edit]
  resources :trips, except: [:new, :edit]
  # resources :trips do
  #   put :reject_trip, on: :member
  # end
  resources :users, except: [:new, :edit]


  # get 'password_reset' => 'users#password_reset', as: 'password_reset'
  # get 'users/dashboard' => 'users#dashboard', as: 'dashboard'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
