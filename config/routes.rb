Rails.application.routes.draw do
  get 'admin/dashboard'
  get 'admin/student_list'
  get 'admin/fee_process'
  get 'admin/attendance'
  resources :posts
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  get 'home/index'
  get 'home/dashboard'
  get 'home/gallery'
  get 'home/fee'
  get 'home/books'
  get 'home/contact_us'
  get 'home/about'
  root 'home#index'
  get 'home/gallery'
  get 'home/fee'
  get 'home/books'
  get 'home/contect_us'
  get 'home/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
