Rails.application.routes.draw do
  get "welcome", to: "school_classes#welcome"

  resources :students

  resources :school_classes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
