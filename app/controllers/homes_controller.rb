class HomesController < ApplicationController
  skip_before_action :authenticate_user!
  # GET /
  def index

  end

end
