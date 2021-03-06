
Rails.application.routes.draw do
  namespace :api do
    root 'api#info'
    scope module: :v1, defaults: {format: 'json'} do
      resources :cursos
      resources :professors
      resources :asignaturas
      resources :horarios
    end

  end


  root 'static_pages#horario'
  get 'datos' => 'static_pages#home'
  get 'profes' => 'professors#index'
  get 'asignaturas' => 'asignaturas#index'
  get 'cursos'  => 'cursos#index'
  post 'lista_asi' => 'horarios#lista_asignaturas'
  post 'lista_no_lec' => 'horarios#lista_asig_no_lectivas'
  post 'lista_profes'  => 'horarios#lista_profes'
  post 'lista_profes_agregados' => 'horarios#l_profes_agregados'
  post 'horas_no_lectivas_agre' => 'horarios#horas_no_lec_agre'
  post 'horas_no_lectivas'  => 'horarios#horas_no_lec'
  post 'agregar_horas' => 'horarios#agregar_horas'
  post 'quitar_horas' => 'horarios#quitar_horas'
  post 'borrar_asig_agregados' => 'horarios#borrar_asignatura'
  post 'borrar_asig_no_lec' => 'horarios#borrar_asignatura_no_lec'
  post 'horas_ajax' => 'horarios#horas_ajax'
  get 'informe' => 'horarios#informe'


  resources :professors
  resources :asignaturas
  resources :cursos
  resources :horarios

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
