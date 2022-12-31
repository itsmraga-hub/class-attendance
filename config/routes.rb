Rails.application.routes.draw do
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    # confirmations: 'admins/confirmations',
    # mailer: 'admins/mailers',
    # passwords: 'admins/passwords'
  }

  devise_scope :staffs do
    get 'staffs/sign_in'
  end
  devise_scope :admins do
    get 'admins/sign_in'
  end
  devise_scope :students do
    get 'students/sign_in'
  end

  devise_for :staffs, path: 'staffs', controllers: {
    sessions: 'staffs/sessions',
    registrations: 'staffs/registrations',
    # confirmations: 'staffs/confirmations',
    # mailer: 'staffs/mailers',
    # passwords: 'staffs/passwords'
  }
  devise_for :students, path: 'students', controllers: {
    sessions: 'students/sessions',
    registrations: 'students/registrations',
    # confirmations: 'students/confirmations',
    # mailer: 'students/mailers',
    # passwords: 'students/passwords'
  }

  # resources :courses

  authenticated :admin do
    # root 'courses#index'
    resources :departments
    resources :courses
    # root '', as: :authenticated_root
  end

  authenticated :student do
    # root '', as: :authenticated_root
    resources :departments
    resources :courses
    # root 'courses#index'
  end

  authenticated :staff do
    # root 'courses#index'
    resources :departments
    resources :courses
    # root '', as: :authenticated_root
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # root 'courses#index'
end
