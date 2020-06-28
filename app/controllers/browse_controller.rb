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

  def open_conversation
    id = params[:ids]
    account_id, project_id = id.split("-")

    @profile = Account.find(account_id)
    @liked_project = Project.find(project_id)

    @our_project_bool = account_id.to_i==current_account.id.to_i

    like = Like.where(account_id: account_id).where(project_id: project_id)

    @like = like.first if like.present?

    conversation = Conversation.where(acc_id: account_id, proj_id: project_id)

    @conversation = conversation.size > 0 ? conversation.first : Conversation.new

    # if @conversation.save
    #
    # else
    #
    # end

    # @messages = @conversation.messages if @conversation.persisted?
    @message = @conversation.messages.build

    if @profile.present?
      respond_to do |format|
        format.js {
          render "browse/conversation"
        }
      end
    end
  end



end
