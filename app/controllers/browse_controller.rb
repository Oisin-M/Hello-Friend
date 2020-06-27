class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    @projects = Project.where.not(account_id: current_account)
    @my_projects = Project.where(account_id: current_account)
    @seen = Like.where(account_id: current_account)
    @likes = @seen.where(liked: true)
    @seen_projects = []
    @seen.each do |like|
      @seen_projects.append(like.project_id)
    end
    @reccomended_projects = @projects.where.not(id: @seen_projects)

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
