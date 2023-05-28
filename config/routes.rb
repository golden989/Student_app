Rails.application.routes.draw do
  
  #get 'students/index'
  #get 'students/show'
  #get 'students/edit'
  #get 'students/new'
  resources :students
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
