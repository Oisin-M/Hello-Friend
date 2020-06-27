class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    @projects = Project.all
  end

  def approve
    project_id = params[:id]
  end

  def decline
    project_id = params[:id]
  end

end
