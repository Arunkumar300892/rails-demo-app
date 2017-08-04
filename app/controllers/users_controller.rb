class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :include_associates

  def show
    @user = User.find_by(id: params[:id])
    @gallery = @user.galleries.new
    @images = @gallery.images.new
  end

  protected

  def include_associates
    User.includes(:profile, :gallery)
  end
end
