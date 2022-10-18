class ProfilesController < ApplicationController
  before_action :own_profile, only: [:edit, :update]

  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to @profile.user
    else
      render :new, status: :unproceesable_entity
    end
  end

  def edit
    @profile = Profile.find_by(user_id: params[:id])
  end

  def update
    @profile = Profile.find(params[:id])

    if @profile.update(profile_params)
      redirect_to @profile.user
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :profile_pic, :gender, :relationship_status, :location, :occupation, :education)
  end

  def own_profile
    redirect_to root_path unless current_user == Profile.find(params[:id]).user
  end
end
