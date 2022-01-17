
@tag
Feature: Signin functionality
1.As a user of Zero bank, I should be able to enter username and password to proceed 
Scenario: Successful Signin with Valid entries Username And Password
    Given I enter the url zero.webappsecurity.com 
    When I click on Signin button
    And I navigate to Signin Page
    And I enter Username as "username"
    And I enter Password as "password"
    And I click on Signin button
    Then I should see 'Account summary' page

Feature: signin functionality 
2.  As a user I should be able to log into the application with get error message 
when entered invalid credentials in order to validate login feature.
Scenario Outline: As a user when I enter invalid userid and password into application
    Given I enter the url zero.webappsecurity.com 
    And I navigate to Signin Page
    When I enter user id as <username> and password as <password>
    And Click on Signin button
    Then I validate that I get an error message "Login and/or password are wrong."

    Examples: 
      | username     | password |
      | "name1"    | "pass1"    |

Feature: Forgotten Password to Zero Bank
3.As a user of Zero bank,I should be able to enter email in generate new password
Scenario: change new password with Valid email
    Given I enter the url zero.webappsecurity.com 
    When I click on Sign-in button
    And I navigate to Signin Page 
    And I click on "Forgotten Password"
    And I navigate to Forgotten Password page
    When I enter "yuvi$12@gmail.com" in the "email" 
    And I click on "Send Password" button
    Then I should generate the "new password" to my email

Feature: Search Box
4.As a user of Zero bank,I should be able to use the search box to get search result
Scenario: Search on home page of Zero Bank
   Given I enter the url zero.webappsecurity.com 
   When I enter "Online Banking" in the search box
   And I click on enter button
   And I navigate to search result page

Feature: Feedback form
5.As a user of Zero bank,I should be able to submit my feedback form
Scenario: user can submit feedback form for zero bank
    Given I enter the url zero.webappsecurity.com 
    When I navigate to Home Page 
    And I click on Feedback  
    And I navigate to Feedback Page
    And I enter all the details
    And I click on submit button 
    Then I should display the messages as “Thank you for your comments”

Feature: Logout Functionality
6.As a zero bank user I should be able to log out to close the access of the application
Scenario: User Can Logout from the application.
    Given I enter the url zero.webappsecurity.com 
    When I navigate to Home Page 
    And I click on username menu
    And I click on Logout button
    Then I should able to Logout from the application

