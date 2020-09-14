class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]

  # GET /profiles/1
  # GET /profiles/1.json
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

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
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

        @edit_profile = "not null"

        @my_profile=Profile.where(account_id: current_account.id).first

        skills

        render "home/browse"
      end
    else
      redirect_to root_path
    end
  end

  # POST /profiles
  # POST /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:account_id, :name, :profile_pic, :bio, skills: [])
    end
end
