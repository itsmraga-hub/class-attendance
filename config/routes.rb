Rails.application.routes.draw do
  get 'dashboards/admin'
  get 'dashboards/staff'
  get 'dashboards/student'
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    # confirmations: 'admins/confirmations',
    # mailer: 'admins/mailers',
    # passwords: 'admins/passwords'
  }

  devise_scope :staffs do
    # get 'staffs/sign_in'
  end
  devise_scope :admins do
    # get 'admins/sign_in'
  end
  devise_scope :students do
    # get 'students/sign_in'
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
    resources :dashboards
    # get 'dashboards#admin'
  end

  authenticated :student do
    resources :dashboards, only: [:student]
    # get 'dashboards#student'
  end

  authenticated :staff do
    resources :dashboards, only: [:staff, :student]
    # get 'dashboards#staff'
  end

  resources :departments
  resources :courses

  root 'dashboards#index'
end
