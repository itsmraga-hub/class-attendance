Rails.application.routes.draw do
  get 'staff_dashboard/index', as: :authenticated_staff_dashboard
  get 'student_dashboard/index', as: :authenticated_student_dashboard
  get 'admin_dashboard/index', as: :authenticated_admin_dashboard
  devise_for :admins, path: 'admins', controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations',
    # confirmations: 'admins/confirmations',
    # mailer: 'admins/mailers',
    # passwords: 'admins/passwords'
  }
  
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

  root 'courses#index'
end
