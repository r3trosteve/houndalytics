Feature: Events

  As a user, I want to be able to see customer events that have been captured on the Houndalytics web site.

  Scenario:
    Given I am a user
    And I have a customer "Acme, Inc"
    And the customer has 23 events
    When I visit the events for Acme, Inc
    Then I see 23 events