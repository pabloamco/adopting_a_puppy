require_relative 'adoption_helper'

include AdoptionHelper

Given ("I am on the puppy adoption site") do
	goto_the_puppy_adoption_site
end
When ("I click the first time View Details button") do
	@browser.button(:value => 'View Details', :index => 1).click
end

And ("I click the first time Adopt Me button") do 
	@browser.button(:value => 'Adopt Me!').click
end

And ("I select additional products collar and leash") do
	@browser.checkbox(:value => '1', :index => 0).click
end

And ("I select additional products chew and toy") do
	@browser.checkbox(:value => '1', :index => 2).click
end

And ("I make possible adopt another puppy") do
	@browser.button(:value => 'Adopt Another Puppy').click
end

And ("I click the View Details button") do
        @browser.button(:value => 'View Details', :index => 0).click
end

And ("I click the Adopt Me button") do
        @browser.button(:value => 'Adopt Me!').click
end

And ("I select additional products for puppy 2 collar and leash") do
	@browser.checkbox(:value => '1', :index => 4).click
end

And ("I select the complete adoption button") do
	@browser.button(:value => 'Complete the Adoption').click
end

And ("I checked out fields") do 
	@browser.text_field(:id => 'order_name').set 'Pablo Leon'
end

And ("I checked the name field") do 
	@browser.textarea(:id => 'order_address').set 'Zamora no. 20'
end

And ("I checked the order adress text area") do
	 @browser.textarea(:id => 'order_address').set 'Zamora no. 20'
end

And ("I checked the Email field") do
	 @browser.text_field(:id => 'order_email').set 'pablol@amco.me'
end

And ("I Selected the pay type") do
	@browser.select_list(:id => 'order_pay_type').select 'Check'
end

And ("I select the place order button") do
	@browser.button(:value => 'Place Order').click
end

Then /^I should see "([^\"]*)"$/ do |expected|
	expect(@browser.text).to include expected
end

