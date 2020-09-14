class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  def new_project
    if account_signed_in?
      if current_account.profile.nil?
        no_profile_page
    else
      @my_projects=Project.where(account_id: current_account.id)
      @seen = Swipe.where(account_id: current_account.id)
      @likes = @seen.where(liked: true)
      @liked_project_ids = []
      @likes.each do |like|
        @liked_project_ids.append(like.project_id)
      end
      @liked_projects = Project.where(id: @liked_project_ids)

      @my_profile=Profile.where(account_id: current_account.id).first

      @new_project = "not null"

      skills
      category

      render "home/browse"
      end
    else
      redirect_to root_path
    end
  end


  # GET /projects/1
  # GET /projects/1.json
  def show
    if account_signed_in?
      if current_account.profile.nil?
        no_profile_page
    else
        @my_projects=Project.where(account_id: current_account.id)
        @seen = Swipe.where(account_id: current_account.id)
        @likes = @seen.where(liked: true)
        @liked_project_ids = []
        @likes.each do |like|
          @liked_project_ids.append(like.project_id)
        end
        @liked_projects = Project.where(id: @liked_project_ids)

        @my_profile=Profile.where(account_id: current_account.id).first

        render "home/browse"
      end
    else
      redirect_to root_path
    end
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    if account_signed_in?
      if current_account.profile.nil?
        no_profile_page
    else
        @my_projects=Project.where(account_id: current_account.id)
        @seen = Swipe.where(account_id: current_account.id)
        @likes = @seen.where(liked: true)
        @liked_project_ids = []
        @likes.each do |like|
          @liked_project_ids.append(like.project_id)
        end
        @liked_projects = Project.where(id: @liked_project_ids)

        @edit_project = "not null"

        @my_profile=Profile.where(account_id: current_account.id).first

        skills
        category

        render "home/browse"
      end
    else
      redirect_to root_path
    end
  end

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    @project.save

    redirect_to browse_path

    # respond_to do |format|
    #   if @project.save
    #     format.html { redirect_to @project, notice: 'Project was successfully created.' }
    #     format.json { render :show, status: :created, location: @project }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @project.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_params
      params.require(:project).permit(:title, :description, :image, :category, :account_id, skills: [])
    end
end
