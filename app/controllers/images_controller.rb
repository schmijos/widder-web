class ImagesController < ApplicationController
  before_action :set_image, only: [:show]

  # GET /images/1.png
  def show
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_image
    @image = Image.find(params[:id])
  end
end
