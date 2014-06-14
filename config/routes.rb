Lorcenter::Application.routes.draw do  
  
  mount Ckeditor::Engine => '/ckeditor'

  get "sitemap.xml" => "home#sitemap", format: :xml, as: :sitemap
  get "robots.txt" => "home#robots", format: :text, as: :robots

  root 'static_pages#home' 

  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/doctor', to: 'static_pages#doctor', via: 'get'
  match '/doctor/semenov', to: 'static_pages#semenov', via: 'get'
  match '/doctor/gorbonosov', to: 'static_pages#gorbonosov', via: 'get'
  match '/price', to: 'static_pages#price', via: 'get'
  match '/rinoplastic', to: 'static_pages#rinoplastic', via: 'get'
  match '/lifting', to: 'static_pages#lifting', via: 'get'
  match '/hearaids', to: 'static_pages#hearaids', via: 'get'
  match '/preparation', to: 'static_pages#preparation', via: 'get'
  

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
