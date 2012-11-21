class HomeController < ApplicationController

	def index
		@events = Agenda.all
		@news = New.all
		@vision = Page.find(1)
	end

end
