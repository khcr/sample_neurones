class GroupsController < ApplicationController

	def index
		@groups = Group.all
	end

	def show
		@group = Group.find_by_name(params[:name])
	end

	def new
		@group = Group.new
	end

	def create
		@group = Group.new(params[:group])
		if @group.save
			flash[:success] = "Group created"
			redirect_to groups_path
		else
			render 'new'
		end
	end

	def destroy
		Group.find(params[:id]).destroy
		flash[:success] = "Group deleted"
		redirect_to groups_path
	end
end