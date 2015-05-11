class VisionsController < ApplicationController
  # GET /visions
  def index
    @visions = Vision.all
  end
end
