Feature: Javascript snippet

	As a user, I want to be able to use the Houndalytics Javascript library to capture client-side events.

	Scenario:
	  Given I am a user
	  And I have customers
	  When I embed the snippet on "http://www.nutribu.com/health/api/v1.html"
	  And an event occurs
	  Then the event is registered on Houndalytics
	  And the event is registered for "www.nutribu.com"