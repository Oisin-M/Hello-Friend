class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in users
    @users = Account.where.not(id: current_account.id)
  end

end
