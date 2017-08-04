class GalleriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_gallery, only: [:edit, :update, :destroy]

  def create
    @gallery = current_user.galleries.new(gallery_params)
    if @gallery.save
      store_avatars
      redirect_to user_path(current_user), notice: 'Gallery successfully created!.'
    else
      redirect_to user_path(@user.errors), alert: 'Something went wrong!'
    end
  end

  def destroy
    @gallery.destroy
    redirect_to user_path(current_user), notice: 'Gallery destroyed successfully.'
  end

  protected

  def set_gallery
    @gallery = Gallery.find_by(id: params[:id])
  end

  def gallery_params
    params.require(:gallery).permit(:name, images_attributes: [:image, :user_id, :_destroy])
  end

  def store_avatars
    images = params[:images]
    images.each{|image| @gallery.images.create(avatar: image)} if images
  end
end
