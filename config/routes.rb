Rails.application.routes.draw do

  devise_for :users, :skip => [:registrations], :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  resources :approved_list do
    get 'approved_detail'
  end

  resources :set_schedule do
    collection do
      get 'new_special_day'
    end

    member do
      get 'edit_special_day'
    end

  end

  resources :input_timesheets do
    member do
      get 'timesheet_details'
      get 'timesheet_details_company'
      get 'timesheet_details_histories'
      get 'accountant_approve'
    end

  end

  resources :project_list
  resources :m_day_types
  resources :m_companies
  resources :users

  resource :user, only: [:edit] do
    collection do
      get 'edit_password'
      patch 'update_password'
    end
  end
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
