Feature: Adopting puppies

	As apuppy lover
	I want to adopt puppies
	So they can chew my furniture

	Scenario: Adopting a puppy
		Given I am on the puppy adoption site
		When I click the first time View Details button
		And I click the first time Adopt Me button
		And I select additional products collar and leash
		And I select additional products chew and toy
		And I make possible adopt another puppy
		And I click the View Details button
		And I click the Adopt Me button
		And I select additional products for puppy 2 collar and leash
		And I select the complete adoption button
		And I checked out fields
		And I checked the name field
		And I checked the order adress text area
		And I checked the Email field
		And I Selected the pay type
		And I select the place order button
		Then I should see "Thank you for adopting a puppy!"
