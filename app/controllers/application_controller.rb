class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  helper ApplicationHelper

  protect_from_forgery with: :exception
end
