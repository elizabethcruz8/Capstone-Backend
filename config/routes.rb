Rails.application.routes.draw do
  namespace :api do 
    post "/users" => "users#create"
    get "/users/current_user" => "users#show_current_user"
    get "/users/:id" => "users#show"
    
    post "/sessions" => "sessions#create"

    get "/relationships" => "relationships#index"
    post "/relationships" => "relationships#create"
    get "/relationships/:id" => "relationships#show"
    delete "/relationships/:id" => "relationships#destroy"

    post "/hobbies" => "hobbies#create"
    get "/hobbies/:id" => "hobbies#show"
    delete "/hobbies/:id" => "hobbies#destroy"

    get "/hobbyusers" => "hobbyusers#index"

    post "/posts" => "posts#create"
    delete "/posts/:id" => "posts#destroy"

    post "/comments" => "comments#create"
    delete "/comments/:id" => "comments#destroy"

  end
end
