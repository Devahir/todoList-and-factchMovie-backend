Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/movies", to: "movies#index"
  get "/users", to: "users#index"
  get "/user/:user_id", to: "users#getById"
  
  get "/getallTodo", to: "todos#getAllTodos"
  post "/createTodo", to: "todos#createTodo"
  get "/deleteTodo", to: "todos#deleteTodo" 
  post "/getByid", to: "todos#getByID"
  post "/updateTodo", to: "todos#updateTodo"
  # Defines the root path route ("/")
  # root "articles#index"
end
