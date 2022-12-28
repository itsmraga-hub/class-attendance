Rails.application.routes.draw do
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
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
