require 'spec_helper'

describe "Agendas" do

	subject { page }

	describe "index page" do 
		before { visit agendas_path }

		it { should have_selector('title', text: "Neurones | Agenda") }
		it { should have_selector('h1', text: 'Events') }

	end

	describe "new" do 
		before { visit new_agenda_path }

		it { should have_selector('title', text: "Neurones | Agenda | new") }
		it { should have_selector('h1', text: "Add an event") }
	end

	describe "edit" do 

		let(:event) { FactoryGirl.create(:agenda) }
		before { visit edit_agenda_path(event) }

		it { should have_selector('title', text: "Neurones | Agenda | edit") }
		it { should have_selector('h1', text: "Edit an event")}
	end
end
