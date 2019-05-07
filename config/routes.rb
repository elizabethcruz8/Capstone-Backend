Rails.application.routes.draw do
  namespace :api do 
    get "/users/current_user" => "users#show_current_user"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    
    post "/sessions" => "sessions#create"

    get "/relationships" => "relationships#index"
    post "/relationships" => "relationships#create"
    get "/relationships/:id" => "relationships#show"
    delete "/relationships/:id" => "relationships#destroy"

    get "/hobbies" => "hobbies#index"
    post "/hobbies" => "hobbies#create"
    get "/hobbies/:id" => "hobbies#show"
    delete "/hobbies/:id" => "hobbies#destroy"

    get "/hobbyusers" => "hobbyusers#index"
    post "/hobbyusers" => "hobbyusers#create"
    

    post "/posts" => "posts#create"
    delete "/posts/:id" => "posts#destroy"

    post "/comments" => "comments#create"
    delete "/comments/:id" => "comments#destroy"

    get "/messages" => "messages#index"
    post "/messages" => "messages#create"

  end
end
