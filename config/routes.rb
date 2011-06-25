Asistomatic::Application.routes.draw do

  get "bloques/index"

  get "bloques/show"

  get "bloques/new"

  get "bloques/create"

  get "bloques/edit"

  get "bloques/destroy"

  get "docentes/show"

  get "docentes/new"

  get "docentes/edit"

  get "docentes/delete"


  get "pages/index"

  #root :to => "pages#index"
  match "pages/home" => "pages#home"

  match 'docentes/index' => 'docentes#index', :as => 'docentes_index'
  match 'docentes/show' => 'docentes#show', :as => 'show'
  match 'docentes/new' => 'docentes#new', :as => 'new'
  match 'docentes/destroy' => 'docentes#destroy', :as => 'destroy'
  resources :docentes

  #Bloques 
  match 'bloques/index' => 'bloques#index', :as => 'bloques_index'
  match 'bloques/show' => 'bloques#show', :as => 'show'
  match 'bloques/new' => 'bloques#new', :as => 'new'
  match 'bloques/destroy' => 'bloques#destroy', :as => 'destroy'
  resources :bloques

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
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
