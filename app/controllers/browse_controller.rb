class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in users
    @users = Accoun.all
  end

end
