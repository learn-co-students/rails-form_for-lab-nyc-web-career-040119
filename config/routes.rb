Rails.application.routes.draw do
  # get 'students/index'
  #
  # get 'students/new'
  #
  # get 'students/create'
  #
  # get 'students/show'
  #
  # get 'students/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :school_classes
  resources :students
end
