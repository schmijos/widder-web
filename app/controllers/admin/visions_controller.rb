module Admin
  class VisionsController < AdminController
    before_action :set_vision, only: [:show, :edit, :update, :destroy]

    # GET /visions
    def index
      @visions = Vision.all
    end

    # GET /visions/1
    def show
    end

    # GET /visions/new
    def new
      @vision = Vision.new
    end

    # GET /visions/1/edit
    def edit
    end

    # POST /visions
    def create
      @vision = Vision.new(vision_params)

      if @vision.save
        redirect_to admin_vision_url(@vision), notice: 'Vision was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /visions/1
    def update
      if @vision.update(vision_params)
        redirect_to admin_visions_url, notice: 'Vision was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /visions/1
    def destroy
      @vision.destroy
      redirect_to admin_visions_url, notice: 'Vision was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_vision
      @vision = Vision.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vision_params
      params.require(:vision).permit(:caption, :content, :image_id)
    end
  end
end
