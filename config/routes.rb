Rails.application.routes.draw do
  #get '/enrollments/show'
  #get '/enrollments/new'
  resources :enrollments, only:[ :new, :create, :show]
  resources :comment_feedbacks
  resources :discussion_forums
  resources :assignments
  get '/calendar/show'
  # get 'posts/:id', to: 'posts#show'
  # resources :posts, only: [:index, :new,:show]
  # resources :students, only: [:index, :new, :create]
  # get '/student/:id', to: 'students#show', as: 'student'

  resources :courses, only: [:show], controller: :courses
  # resources :discussion_forums
  # resources :assignments

  root 'welcome#home'
  get '/auth/facebook/callback' => 'sessions#create'
 # sign up page with form:
 get '/signup' => 'users#new', as: :new_user

 # create (post) action for when sign up form is submitted:
 post '/users' => 'users#create'

 # log in page with form:
 get '/login'     => 'sessions#new'
   
 # create (post) action for when log in form is submitted:
 post '/login'    => 'sessions#create'

 # delete action to log out:
 delete '/logout' => 'sessions#destroy'  
 # delete 'sign_out', to: 'sessions#destroy', as: 'sign_out'
  # get 'enrollment/page'

  resource :calendar, only: [:show], controller: :calendar
  #  root to: "calendar#show"
  
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
