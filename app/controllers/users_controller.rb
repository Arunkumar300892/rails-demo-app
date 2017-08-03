class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :include_associates

  def show
    @user = User.find_by(id: params[:id])
    @gallery = @user.galleries.new
    @images = @gallery.images.new
  end

  def add_gallery
    @user = User.find_by(id: params[:id])
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

  def include_associates
    User.includes(:profile, :gallery)
  end

  def gallery_params
    params.require(:gallery).permit(:name)
  end

  def store_avatars
    images = params[:gallery][:images]
    images.each{|image| @gallery.images.create(avatar: image)} if images
  end
end
