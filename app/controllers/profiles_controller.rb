class ProfilesController < ApplicationController
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
      render :edit, status: :unproceesable_entity
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio)
  end
end
