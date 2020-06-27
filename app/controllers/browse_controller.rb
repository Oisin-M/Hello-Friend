class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    @projects = Project.all
  end

  def approve
  end

  def decline
  end

end
