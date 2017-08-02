class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find_by(id: params[:id])
    @gallery = @user.galleries.new
    @images = @gallery.images.new
  end

  def add_gallery
    @user = User.find_by(id: params[:id])
    @user.galleries.new(gallery_params)
    if @user.save
      flash[:notice] = "notice: 'Gallery created!'"
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user.errors, alert: 'Something went wrong!')
    end
  end

  protected

  def gallery_params
    params.require(:gallery).permit(:name, images_attributes: [{ avatars: [] }])
  end
end
