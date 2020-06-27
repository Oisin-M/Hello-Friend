class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    @projects = Project.where.not(account_id: current_account)
    @my_acc = current_account

  end

  def approve
    project_id = params[:id]

    like=Like.new(account_id: Project.find(project_id.to_i).account_id.to_i, project_id: project_id.to_i, liked: true)

    if like.save

    else

    end

  end

  def decline
    project_id = params[:id]

    like=Like.new(account_id: Project.find(project_id.to_i).account_id.to_i, project_id: project_id.to_i, liked: false)

    if like.save

    else

    end

  end

end
