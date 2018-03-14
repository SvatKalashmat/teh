class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:index]

  helper ApplicationHelper

  protect_from_forgery with: :exception

end
