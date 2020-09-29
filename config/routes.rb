Rails.application.routes.draw do
  get 'user/index'
  devise_for :users
  resources :students
  resources :enrollments, only: [:new, :create, :destroy]
  get 'enrollments/index'
  get 'enrollments/new'
  get 'enrollments/create'
  get 'enrollments/destroy'
  get 'courses/index'
  root 'students#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
