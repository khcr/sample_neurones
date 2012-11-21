require 'spec_helper'

describe "Page Pages" do

	subject { page }

	describe "Edit" do 

		let(:vision) { FactoryGirl.create(:page) }

		before { visit '/presentation/edit' }

		it { should have_selector('title', text: 'Edit') } 
	end

end
