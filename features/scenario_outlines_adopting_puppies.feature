Feature: Adopting puppies Using Scenario Outlines
	As a puppy lover
	I want to adopt puppies
	With different scenarios
	So they can chew my furniture

	Background:
		Given I am on the adoption puppy site


	Scenario Outline: Adopting a puppy
		When I click View Details button
                And I click the Adopt Me Button
		And I click the Complete the Adoption button
		And I fill the "<name>" field
		And I check the "<address>" field
		And I place the "<email>" field
		And I select the "<pay_type>" to pay
		And I click the Place Order button
		Then I should see "Thank you for adopting a puppy!"
		Examples:
                        |name     |address      |email              |pay_type      |
                        |Pablo    |La chori 123 |pablol@amco.me     |Check         |
                        |Carlota  |Jardin Real 2|carlotas@amco.me   |Purchase order|
                        |Sergio   |Robada angula|elbailador@llego.me|Check         |           
