Rails.application.routes.draw do
  
  


    get 'categorias', to: 'categorias#index', as: 'categorias' 
    post '/categorias', to: 'categorias#create'
    get 'categorias/nuevas', to: 'categorias#new', as: 'new_categoria'
    get 'categorias/:id' , to: 'categorias#show', as: 'categoria'
    patch 'categorias/:id', to: 'categorias#update'
    put 'categorias/:id', to: 'categorias#update'
    delete 'categorias/:id', to: 'categorias#destroy'
    get 'nueva_categoria', to: 'categorias#new', as: 'nueva_categoria'
    get 'categorias/:id/editar', to: "categorias#edit", as: 'editar_categoria'

    get 'marcas', to: 'marcas#index', as: 'marcas' 
    post '/marcas', to: 'marcas#create'
    get 'marcas/nuevas', to: 'marcas#new', as: 'new_marca'
    get 'marcas/:id' , to: 'marcas#show', as: 'marca'
    patch 'marcas/:id', to: 'marcas#update'
    put 'marcas/:id', to: 'marcas#update'
    delete 'marcas/:id', to: 'marcas#destroy'
    get 'nueva_marca', to: 'marcas#new', as: 'nueva_marca'
    get 'marcas/:id/editar', to: "marcas#edit", as: 'editar_marca'
  

  resources :brands
  devise_for :users
  get 'dashboard/index'

root to: 'dashboard#index'
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
