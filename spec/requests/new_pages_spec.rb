require 'spec_helper'

describe "New Pages" do

	subject { page }

	describe "index" do 

		before { visit news_path }

		it { should have_selector('title', text: 'Neurones | News') }
		it { should have_selector('h1', text: 'News') }
	end


	describe "new" do 

		before { visit new_new_path }

		it { should have_selector('title', text: 'Neurones | News | new') }
		it { should have_selector('h1', text: 'Add a new') }

		describe "submitting with invalid information" do 
			
			it "should not create a new" do 
				expect { click_button "Add" }.not_to change(New, :count)
			end

			describe "after submissing" do 
				it { should have_selector('title', text: 'Neurones | News | new') }
				it { should have_selector('h1', text: 'Add a new') }
			end
		end

		describe "submitting with valid information" do
			before do 
				fill_in "Title", with: "Lorem ipsum"
				fill_in "Content", with: "Lorem ipsum"
			end

			it "should create a new" do
				expect { click_button "Add" }.to change(New, :count).by(1)
			end
			describe "after submitting" do 
				before { click_button "Add" }

				it { should have_selector('title', text: 'Neurones | News') }
				it { should have_selector('h1', text: 'News') }
			end
		end
	end

	describe "edit" do 

		let(:new) { FactoryGirl.create(:new) }
		before { visit edit_new_path(new) }

		it { should have_selector('title', text: 'Neurones | News | edit') }
		it { should have_selector('h1', text: 'Edit a new') }

	end
end