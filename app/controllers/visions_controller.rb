class VisionsController < ApplicationController
  # GET /visions
  def index
    @visions = Vision.all
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vision
    @vision = Vision.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def vision_params
    params.require(:vision).permit(:title, :content)
  end
end
