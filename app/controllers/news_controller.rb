class NewsController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

	def index
		@news = New.all
	end

	def new 
		@new = New.new
	end

	def create
		@new = New.new(params[:new])
		if @new.save
			flash[:success] = "New saved"
			redirect_to news_path
		else
			render 'new'
		end
	end

	def edit
		@new = New.find(params[:id])
	end

	def update
		@new = New.find(params[:id])
		if @new.update_attributes(params[:new])
			flash[:success] = "New updated"
			redirect_to news_path
		else
			render 'edit'
		end
	end


	def destroy
		New.find(params[:id]).destroy
		flash[:success] = "New deleted"
		redirect_to news_path
	end
end
