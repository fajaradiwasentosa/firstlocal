Enterprise::Application.routes.draw do

  get "testimonials/index"

  get "promotions/index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users
  ActiveAdmin.routes(self)

  resources :galleries do
    get 'page/:page', :action => :index, :on => :collection
  end
  resources :contacts
  resources :messages
  resources :products
  resources :tricks

  match 'contact' => 'message#create', :as => 'contact', :via => :post

  get "orders/index"
  get "contacts/index"
  get "tricks/index"
  get "/products" => "products#index", as: :products
  get "/profiles" => "profiles#index", as: :profiles
  get "/dashboard" => "dashboard#index", as: :dashboard
  get "/tips_and_tricks" => "tricks#index", as: :tip_and_trick
  get "/contact_us" => "messages#index", as: :contact_us
  get "/galleries" => "galleries#index", as: :gallery
  get "/order" => "orders#index", as: :order
  get "/promotions" => "promotions#index", as: :promotion
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
  root :to => 'dashboard#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
