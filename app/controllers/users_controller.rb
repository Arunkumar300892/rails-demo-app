class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :include_associates

  def show
    @user = User.find_by(id: params[:id])
    @gallery = @user.galleries.new
  end

  def add_gallery
    @user = User.find_by(id: params[:id])
    @user.galleries.new(gallery_params)
    if @user.save
      flash[:notice] = 'Gallery created!'
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user.errors, alert: 'Something went wrong!')
    end
  end

  protected

  def include_associates
    User.includes(:profile, :gallery)
  end

  def gallery_params
    params.require(:gallery).permit(:name, image_attributes: [{ avatars: [] }])
  end
end
