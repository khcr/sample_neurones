class GalleriesController < ApplicationController

	def index
		@galleries = Gallery.all
	end

	def show
		@gallery = Gallery.find(params[:id])
	end

	def new
		@gallery = Gallery.new
	end

	def create 
		@gallery = Gallery.new(params[:gallery])
		if @gallery.save
			flash[:success] = "Gallery created"
			redirect_to galleries_path
		else
			render 'new'
		end
	end

	def destroy
    @gallery = Gallery.find(params[:id])
    FileUtils.rm_rf("public/uploads/image/image/#{@gallery.id}")   
    @gallery.destroy
    flash[:success] = "Gallery destroyed"
    redirect_to galleries_path
  end
end
