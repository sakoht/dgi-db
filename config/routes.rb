DruggableGene::Application.routes.draw do
  match 'drugs/:name' => 'drugs#show', as: 'drug'
  match 'genes/:source_db_name/:name' => 'genes#show'
  match 'gene_group_names' => 'gene_groups#names'
  match 'gene_groups/:name' => 'gene_groups#show', as: 'gene_group'
  match 'interactions/:id' => 'interactions#show', as: 'interaction'
  match 'druggable_gene_categories/:name' => 'gene_groups#druggable_gene_category', as: 'gene_group_by_category'
  match 'druggable_gene_categories' => 'gene_groups#druggable_gene_categories'
  match 'drug_groups/:name' => 'drug_groups#show', as: 'drug_group'
  match 'sources/:source_db_name' => 'sources#show', as: 'source_summary'
  match 'sources' => 'sources#sources'
  match 'drug_groups/:name/related' => 'drug_groups#related_drug_groups', as: 'related_drugs'
  match 'search_results' => 'search#search_results'
  match 'cache/invalidate' => 'utilities#invalidate_cache'
  post 'interaction_search_results' => 'interactions#interaction_search_results'
  post 'categories_search_results' => 'gene_groups#categories_search_results'
  match ':action' => 'static#:action'
  root :to => 'static#search_interactions'

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
