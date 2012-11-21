require 'spec_helper'

describe "New" do
  
  before do 
  	@new = New.new(title: "Example", content: "Lorem ipsum", date_expiration: Time.now)
  end

  subject { @new }

  it { should respond_to(:author) }
  it { should respond_to(:content) }

  it { should be_valid }

  describe "Validations" do 

  	describe "when name is not present" do 
  		before { @new.title = " " }
  		it { should_not be_valid}
  	end

  	describe "when content is not present" do 
  		before { @new.content = " " }
  		it { should_not be_valid}
  	end

  	describe "when date is not present" do 
  		before { @new.date_expiration = " " }
  		it { should_not be_valid }
  	end
  end
end
