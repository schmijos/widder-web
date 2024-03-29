module Admin
  class ImagesController < AdminController
    before_action :set_image, only: [:show, :edit, :update, :destroy]

    # GET /images
    def index
      @images = Image.all
    end

    # GET /images/1
    def show
    end

    # GET /images/new
    def new
      @image = Image.new
    end

    # GET /images/1/edit
    def edit
    end

    # POST /images
    def create
      @image = Image.new(image_params)

      if @image.save
        redirect_to admin_image_url(@image), notice: 'Image was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /images/1
    def update
      if @image.update(image_params)
        redirect_to admin_images_url, notice: 'Image was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /images/1
    def destroy
      @image.destroy
      redirect_to admin_images_url, notice: 'Image was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      h = params.require(:image).permit(:content, :image_id)
      if params[:image][:image_id].present?
        preloaded = Cloudinary::PreloadedFile.new(params[:image][:image_id])
        if preloaded.valid?
          h[:image_id] = preloaded.identifier
        else
          throw StandardError.new('Image could not be signed.')
        end
      end
      h
    end
  end
end
