Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'

  namespace :api do
    namespace :v1 do
      resources :fruits, only: [:index, :create, :destroy, :update]

      resources :budgets, only: [:index, :create, :destroy, :update, :show] do
        resources :line_items, only: [:index, :create, :destroy, :update, :show]
        resources :budget_members, only: [:index, :create, :destroy, :update, :show]
      end

      resources :users, only: [:index, :create, :destroy, :update, :show]

    end
  end
  
end
