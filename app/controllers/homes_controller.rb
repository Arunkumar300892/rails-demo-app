class HomesController < ApplicationController
  skip_before_action :authenticate_user!
  # GET /
  def index
    redirect_to new_user_session_path
  end

end
