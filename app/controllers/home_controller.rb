class HomeController < ApplicationController
  def index
    # TODO расписать 302
    redirect_to teams_path
  end
end
