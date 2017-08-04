class GalleriesController < ApplicationController
  before_action :authenticate_user!

  def create
    @user = User.find_by(id: params[:user_id])
    @gallery = @user.galleries.new(gallery_params)
    if @user.save
      store_avatars
      flash[:notice] = 'Gallery successfully created!'
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user.errors, alert: 'Something went wrong!')
    end
  end

  protected

  def gallery_params
    params.require(:gallery).permit(:name)
  end

  def store_avatars
    images = params[:gallery][:images]
    images.each{|image| @gallery.images.create(avatar: image)} if images
  end
end
