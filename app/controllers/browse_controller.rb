class BrowseController < ApplicationController

  # Browse method when browse page entered
  def browse
    # Load in project
    redirect_to account_session_path unless account_signed_in?
    @projects = Project.where.not(account_id: current_account)
    @my_projects = Project.where(account_id: current_account)
    @seen = Like.where(account_id: current_account)
    @likes = @seen.where(liked: true)
    @seen_projects = []
    @seen.each do |like|
      @seen_projects.append(like.project_id)
    end
    @reccommended_projects = @projects.where.not(id: @seen_projects)

  end

  def approve
    project_id = params[:id]

    like=Like.new(account_id: current_account.id, project_id: project_id.to_i, liked: true)
  end

  def decline
    project_id = params[:id]

    like=Like.new(account_id: current_account.id, project_id: project_id.to_i, liked: false)
  end

  def open_conversation
    id = params[:id]
    @profile = current_account.id

    conversation = Conversation.between(id, current_account.id)

    @conversation = conversation.size > 0 ? conversation.first : Conversation.new

    format.js { render "browse/conversation" }

  end



end
