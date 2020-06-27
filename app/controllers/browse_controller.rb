class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    @projects = Project.where.not(account_id: current_account)
    @my_projects = Project.where(account_id: current_account)
    @likes = Like.where(account_id: current_account)

  end

  def approve
    project_id = params[:id]

    like=Like.new(account_id: current_account.id, project_id: project_id.to_i, liked: true)

    if like.save

    else

    end

  end

  def decline
    project_id = params[:id]

    like=Like.new(account_id: current_account.id, project_id: project_id.to_i, liked: false)

    if like.save

    else

    end

  end

end
