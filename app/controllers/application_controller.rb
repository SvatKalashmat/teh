class ApplicationController < ActionController::Base
  before_action :authenticate_user!, only: [:show, :edit, :update, :destroy, :create]

  helper ApplicationHelper

  protect_from_forgery with: :exception

end
