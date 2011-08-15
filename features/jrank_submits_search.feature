Feature: JRank submits a search

	In Order to Receive JRank.org XML-Object
	As a User
	I want to submit search parameters

	Scenario: submit search
		Given I have a query of "swift"
		When I submit a search
		Then I should have an xml object
	
	Scenario: no results returned
		Given I have a query of ""
		When I submit a search
		Then I should have an xml object
		And the xml has no results

	Scenario: goto page 3
		Given I have a query of "swift"
		And I have a start value of "20"
		When I submit a search
		Then I should have an xml object
		And the xml current page is "2"

	Scenario: return 50 results per page
		Given I have a query of "swift"
		And I have a limit value of "50"
		When I submit a search
		Then I should have an xml object
		And the xml page limit is "50"

		
	