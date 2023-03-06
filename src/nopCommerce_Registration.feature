Feature: Nop8commerce Registration
  As a User I want to check the Register functionality of Nopcommerce

  Background: I am on Nopcommerce Registeration page
    Given     I open the Google Chrome Browser
    When      I open the URL https://demo.nopcommerce.com/register
    Then      I am on Nopcommerce Registration page

    Scenario Outline: I should not be able to register with invalid data on mandatory field (*) of registration page
      When  I enter first name "<First Name>"
      And   I enter last name "<Last Name>"
      And 	I enter Email address "<Email>"
      And 	I enter Password "<Password>"
      And 	I enter Confirm Password "<Confirm Password>"
      And 	Click on Register button
      Then 	I can see an error message "<error message>"
      And 	I am not able to register

  Examples:
  | First Name | Last Name |Email            |Password       | Confirm Password   | error message
  | " "        | Bakshi    |bakshi@gamil.com |456897         | 456897             | error message

  Scenario: I should be able to select any one radio button from Gender Label of your Personal Details section
  Scenario Outline: I should be able to select Day,Month and Year from drop down list of Date of birth field

    Given   I am on Gender label of Your Personal detail section
    When    I select day "<Day>"
    And     I select month "<Month>"
    And     I select Year "<Year>"
    Then    I am able to select Day, Month and Year from drop down list

    Examples:
    | Day    | Month   |  Year|
    | 11     | November|1989  |

    Scenario: I should be able to check and uncheck the Newsletter box on Option section
      Given  I am on Newsletter label on Option section
      When   I click on Newletter checkbox
      And    I again click on Newsletter Checkbox
      Then   I was able to check and uncheck the box next to Newsletter label

      Scenario: I should be able to register with valid mandatory (*) field data on registration page

        When I enter First name "Rohan"
        And  I enter Last name "Bakshi"
        And  I enter Email "bakshi'gamil.com
        And  I enter password "456897"
        And  I enter Confirm Password "456897"
        And  I click on Register button
        Then I was able to register successfully

