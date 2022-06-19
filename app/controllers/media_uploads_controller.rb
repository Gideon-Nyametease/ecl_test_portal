class MediaUploadsController < ApplicationController
  before_action :set_media_upload, only: %i[ show edit update destroy ]

  # GET /media_uploads or /media_uploads.json
  def index
    @media_uploads = MediaUpload.all
  end

  # GET /media_uploads/1 or /media_uploads/1.json
  def show
  end

  # GET /media_uploads/new
  def new
    @media_upload = MediaUpload.new
  end

  # GET /media_uploads/1/edit
  def edit
  end

  # POST /media_uploads or /media_uploads.json
  def create
    @media_upload = MediaUpload.new(media_upload_params)

    respond_to do |format|
      if @media_upload.save
        format.html { redirect_to media_upload_url(@media_upload), notice: "Media upload was successfully created." }
        format.json { render :show, status: :created, location: @media_upload }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @media_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /media_uploads/1 or /media_uploads/1.json
  def update
    respond_to do |format|
      if @media_upload.update(media_upload_params)
        format.html { redirect_to media_upload_url(@media_upload), notice: "Media upload was successfully updated." }
        format.json { render :show, status: :ok, location: @media_upload }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @media_upload.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /media_uploads/1 or /media_uploads/1.json
  def destroy
    @media_upload.destroy

    respond_to do |format|
      format.html { redirect_to media_uploads_url, notice: "Media upload was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_media_upload
      @media_upload = MediaUpload.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def media_upload_params
      params.require(:media_upload).permit(:onesimus_test_id, :image_name, :location, :active_status, :del_status)
    end
end
