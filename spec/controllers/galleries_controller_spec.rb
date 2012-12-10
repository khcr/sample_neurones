require 'spec_helper'

describe GalleriesController do

	describe "page" do 
		before { visit '/galleries/1/paintings' }

		it { should have_selector('h1', text: 'Hello world') }

	end

end
