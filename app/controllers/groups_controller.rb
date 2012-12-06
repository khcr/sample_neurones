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
end