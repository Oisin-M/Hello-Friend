class HomeController < ApplicationController

  def index
    redirect_to browse_path if account_signed_in?
  end

  def browse
    @project_to_swipe=Project.first #get first suitable project

    @my_projects=Project.where(account_id: current_account.id)
    @seen = Swipe.where(account_id: current_account.id)
    @likes = @seen.where(liked: true)
    @liked_project_ids = []
    @likes.each do |like|
      @liked_project_ids.append(like.project_id)
    end
    @liked_projects = Project.where(id: @liked_project_ids)

  end
end
