class PaintingsController < ApplicationController

  def index
    @paintings = Painting.all
  end

  def new
    @painting = Painting.new(:gallery_id => params[:gallery_id])
  end

  def create
    @painting = Painting.create(params[:painting])
  end

  def destroy
    @painting = Painting.find(params[:id])
    @painting.destroy
    redirect_to paintings_url, notice: "Painting destroyed"
  end

end