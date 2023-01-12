Rails.application.routes.draw do
  get 'dashboards/student_dashboard', as: :authenticated_student_dashboard
  get 'dashboards/staff_dashboard', as: :authenticated_staff_dashboard
  get 'dashboards/admin_dashboard', as: :authenticated_admin_dashboard

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

  resources :departments do
    resources :courses do
      resources :subjects
    end
  end

  resources :departments, only: [:index, :show]
  
  resources :courses, only: [:index, :show] do
    resources :subjects, only: [:index, :show] do
      resources :absents
      resources :presents
    end
  end

  root 'root#index'
end
