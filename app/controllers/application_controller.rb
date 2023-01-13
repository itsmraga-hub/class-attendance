class ApplicationController < ActionController::Base
  # include Accessible
  # skip_before_action :check_user, only: [:index]

  protect_from_forgery with: :exception

  # before_action :authenticated!
end
