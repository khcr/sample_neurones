require 'active_support/core_ext/time/calculations.rb'

FactoryGirl.define do 
	factory :new do
		title "Lorem ipsum"
		content "Lorem ipsum"
		date_expiration Time.now.tomorrow
	end

	factory :agenda do 
		title "Lorem ipsum"
		content "Lorem ipsum"
		image "example"
		date_begin Time.now
		date_end Time.now
	end
end