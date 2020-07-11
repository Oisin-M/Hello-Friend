class HomeController < ApplicationController

  def index
    redirect_to browse_path if account_signed_in?
  end

  def browse
    @projects=Project.all #should be matched projects, not all of them but will do for now
  end
end
