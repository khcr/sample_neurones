class AgendasController < ApplicationController
	before_filter :signed_in_user, only: [:new, :create, :edit, :update, :destroy]

	def index
		@events = Agenda.all
	end

	def new
		@agenda = Agenda.new
	end

	def create
		@agenda = Agenda.new(params[:agenda])
		if @agenda.save
			flash[:success] = "Event saved"
			redirect_to agendas_path
		else
			render 'new'
		end
	end

	def edit
		@agenda = Agenda.find(params[:id])
	end

	def update
		@agenda = Agenda.find(params[:id])
		if @agenda.update_attributes(params[:agenda])
			flash[:success] = "Event updated"
			redirect_to agendas_path
		else
			render 'edit'
		end
	end

	def destroy
		Agenda.find(params[:id]).destroy
		flash[:success] = "Event deleted"
		redirect_to agendas_path
	end
end
