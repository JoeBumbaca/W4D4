class BandsController < ApplicationController

  def index
    render :index
  end


  def create
    @band = Band.new(band_params)
    if @band.save!
      redirect_to band_url(@band)
    else
      render :new
    end
  end

  def destroy
    @band.delete
    redirect_to bands_url
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
