class PagesController < ApplicationController
	before_filter :signed_in_user, only: [:edit, :update]

	def presentation
		@vision = Page.find(1)
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])
		if @page.update_attributes(params[:page])
			flash[:success] = 'Page updated'
			redirect_to presentation_path
		else
			render 'edit'
		end
	end

end
