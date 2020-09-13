class HomeController < ApplicationController

  def index
    if account_signed_in?
      if current_account.profile.nil?
        no_profile_page
      else
        redirect_to browse_path
      end
    end
  end

  def browse
    if account_signed_in?
      if current_account.profile.nil?
        no_profile_page
      else
      #@project_to_swipe=Project.first #get first suitable project

        @my_projects=Project.where(account_id: current_account.id)
        @seen = Swipe.where(account_id: current_account.id)
        @likes = @seen.where(liked: true)
        @seen_project_ids = []
        @seen.each do |view|
          @seen_project_ids.append(view.project_id)
        end
        @liked_project_ids = []
        @likes.each do |like|
          @liked_project_ids.append(like.project_id)
        end
        @liked_projects = Project.where(id: @liked_project_ids)

        @project_to_swipe = Project.where.not(id: @seen_project_ids).where.not(account_id: current_account.id).first

        @no_projects_left="not null"

        @my_profile=Profile.where(account_id: current_account.id).first
      end
    else
      redirect_to root_path
    end
  end

end
