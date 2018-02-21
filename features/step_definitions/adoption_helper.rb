module AdoptionHelper
	def goto_the_puppy_adoption_site
		@browser = Watir::Browser.new :chrome
		@browser.goto ('puppies.herokuapp.com')
	end

	def adopt_puppy_number(num)
		@browser.button(:value => 'View Details', :index => num).click
		sleep 2
        end

	def confirm_puppy
		@browser.button(:value => 'Adopt Me!').click
                sleep 2
	end

	def complete_adoption
		@browser.button(:value => 'Complete the Adoption').click
	end

        def close_the_browser
                @browser.close
	end
end
