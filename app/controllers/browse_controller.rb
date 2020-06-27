class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in users
    @users = Account.all
  end

end
