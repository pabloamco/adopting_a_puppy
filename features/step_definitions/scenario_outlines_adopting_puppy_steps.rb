require_relative 'adoption_helper'
require_relative 'checkout_page'

include AdoptionHelper
include Checkout

	Given ("I am on the adoption puppy site") do
		goto_the_puppy_adoption_site
	end
	When ("I click View Details button") do
		adopt_puppy_number(0)
	end
	And ("I click the Adopt Me Button") do
		confirm_puppy
	end
	And ("I click the Complete the Adoption button") do
		complete_adoption
	end
	And /^I fill the (.*) field$/ do |name|
		CheckoutPage.name name 
	end
	And /^I check the (.*) field$/  do |address|
		CheckoutPage.address address 
	end
	And /^I place the (.*) field$/ do |email|
		CheckouPage.email email 
	end
	And /^I select the (.*) to pay$/ do |pay_type|
		CheckoutPage.pay_type pay_type
	end
	And  ("I click the Place Order button") do
		CheckoutPage.place_order
	end
	Then (/^I should see "([ˆ\"]*)"$/) do |message|
		expect(@browser.text).to include message
	end
