Feature: Contacts List
    Scenario: Contacts list is fetched
        Given the contacts list is fetched
        Then I don't see {CircularProgressIndicator} widget
        And I see exactly {1} {ListView} widgets
    Scenario: App is initially loading
        Given the app is running
        Then I see exactly {1} {CircularProgressIndicator} widgets
        And I don't see {ListView} widget
        When I tap {Full Name} text
        Then I see {Edit} text
     
 