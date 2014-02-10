Feature: Events

  As a user, I want to be able to see customer events that have been captured on the Houndalytics web site. As a user, I want to be able to select a date range to see different views of data for a given customer.

  Scenario:
    Given I am a user
    And I have a customer "Acme, Inc"
    And the customer has 23 events
    When I visit the events for Acme, Inc
    Then I see 23 events

  Scenario:
    Given I am a user
    And I have a customer "Acme, Inc"
    And the customer had 10 events yesterday
    And the customer has 20 events today
    When I visit the events for yesterday
    Then I see 10 events
