Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # session
  post "/login", to: "login#create"
  post "/register", to: "register#create"

  # students
  get "/students", to: "students#index"
  get "/students", to: "students#show"
  post "/students", to: "students#create"

  # teachers
  get "/teachers", to: "teachers#index"
  get "/teachers", to: "teachers#show"
  post "/teachers", to: "teachers#create"

  # classes
  get "/classes", to: "classes#index"

end
