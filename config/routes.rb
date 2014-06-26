Rails.application.routes.draw do
  resources :completed_assignments

  get "create_assignment" => "assignments#new", as: "create_assignment"
  resources :assignments

  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  resources :sessions

  get "sign_up_teacher" => "teachers#new", :as => "sign_up_teacher"
  get "teachers/add_student_form" => "teachers#add_student_form", as: "add_student_form"
  # post "teachers#add_student" => "teachers#add_student", :as => "add_student"
  post "/teachers" => "teachers#add_student", as: "add_student"
  # get ':controller => "teachers"/:action => "add_student"/:id/:username'
  resources :teachers # do
  #   collection do
  #     get :add_student
  #   end
  #  # member do
  #  #   get "add_student"
  #  # end
  # end

  get "sign_up_user" => "users#new", :as => "sign_up_user"
  resources :users

  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

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
