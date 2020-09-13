class ApplicationController < ActionController::Base

  private

  def no_profile_page

    @my_projects=Project.where(account_id: current_account.id)
    @seen = Swipe.where(account_id: current_account.id)
    @likes = @seen.where(liked: true)
    @liked_project_ids = []
    @likes.each do |like|
      @liked_project_ids.append(like.project_id)
    end
    @liked_projects = Project.where(id: @liked_project_ids)

    @new_profile = "not null"
    render "home/browse"
  end

end
