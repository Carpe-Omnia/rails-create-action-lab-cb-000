Rails.application.routes.draw do
  resources :students, only: [:index, :new]
  get '/student/:id', to: 'students#show', as: :student_path
  post 'students', to: 'students#create'
end
