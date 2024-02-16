Rails.application.routes.draw do
  resources :books do 
    member do 
      get 'delete'
      #member code block for the extra one i need, member not collection
    end
  end 
  root "books#index"
end


# Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"