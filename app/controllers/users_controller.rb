class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorized?
  before_action :include_associates

  def show
    @user = User.find_by(id: params[:id])
    if @user
      @gallery = @user.galleries.new
      @images = @gallery.images.new
    end
  end

  protected

  def include_associates
    User.includes(:profile, :gallery)
  end

  def authorized?
    redirect_to user_path(current_user),
     alert: "Access Denied !" unless current_user.id == params[:id].to_i
  end

end
