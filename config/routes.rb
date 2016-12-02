Rails.application.routes.draw do
  devise_for :users
  
  # get 'employees/index'

  # get 'employees/new'

  # get 'employees/show'

  # get 'employees/edit'

  # get 'employees/create'

  # get 'employees/update'

  # get 'employees/destroy'
   root to: "employee#index"
  resources :employees
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
