Sied::Application.routes.draw do 

  get "fullevent/index"

  resources :events


#  get "testfullevents/index"

  resources :fullevents do
    collection { post :search, to: 'fullevents#index' }
  end


#  get "fullevents/index"

#  map.connect ':controller/:action.:format'
#  match "/:controller(/:action)(.:format)"
  resources :roles


  devise_for :users do
    get "/users/sign_out" => "devise/sessions#destroy", :as => :destroy_user_session
  end

  resources :users


  resources :events


  resources :localities


  resources :priorities


  resources :vehicles


  resources :criminal_groups


  resources :weapon_types


  resources :weapons


  resources :statuses


  resources :people


  resources :events


  get "catalogs/index"

  resources :analysts


  get "welcome/index"

  resources :areas


  resources :drugs


  resources :person_statuses


  resources :weapons_types


  resources :crimes


  resources :event_statuses


  resources :places


  resources :townships


  resources :addresses


  resources :vehicles


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'events#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
