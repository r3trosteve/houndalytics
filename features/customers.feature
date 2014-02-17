Feature: As a user, I want to be able to see an index of customers (other web apps) that use the Houndalytics Javascript library.

    Background:
    	Given I have customers

	Scenario:
		Given I am a user
		When I log in to Houndalytics
		Then I see an index of customers

	Scenario:
		Given I am a regular visitor
		When I visit the index of customers
		Then I see "ACCESS DENIED!!!111ONE"

	Scenario:
		Given I am a regular visitor
		When I attempt to log in to Houndalytics without a valid user account
		Then I see a Flash message "Username not recognised"