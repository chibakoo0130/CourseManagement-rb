Rails.application.routes.draw do
  root to: 'courses#menu'
  post 'courses/menu'
  get 'courses/index'
  get 'courses/show'
  get 'courses/new'
  post 'courses/new'
  post 'courses/confirm'
  post 'course/create'
  get 'courses/edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
