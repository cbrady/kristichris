class PicturesController < ApplicationController
  def index
    respond_to do |format|
      format.json {
        @pics = Picture.all
        render json: @pics
      }
      format.html
    end
  end

  def new
    @pic = Picture.new
  end

  def create
    @pic = Picture.new(picture_params)
    if @pic.save
      redirect_to :index
    else
      render :new
    end
  end

  private
    def picture_params
      params.require(:picture).permit(:image, :name, :caption)
    end
end
