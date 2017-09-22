Rails.application.routes.draw do
  resources :students, only: :index

  # This show route can be refactored into the above resources method call, like so:
  # resources :students, only: [:index, :show]
  # However, for the sake of this lab and seeing how you can pass params through
  # the route, we'll keep it explicit for now and refactor later.
  get "/students/:id", to: "students#show", as: "student"
  #allows for student_url & student_path
  # resources :students, path: 'student'

  get '/students/:id/activatestudent', to: 'students#activate_student', as: 'activate_student'
end
