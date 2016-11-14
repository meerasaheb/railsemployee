Rails.application.routes.draw do
  # get 'employees/index'

  # get 'employees/new'

  # get 'employees/show'

  # get 'employees/edit'

  # get 'employees/create'

  # get 'employees/update'

  # get 'employees/destroy'
  resources :employees
  root :to => "employees#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
