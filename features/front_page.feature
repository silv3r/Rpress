Feature: Front Page
	In order to see the most relevant posts
	As a reader
	I want the 5 most recent posts on the front page

Scenario: 1 post in blog
	Given I have a post
	And my post has title "My post"
	And my post has body "This is my post."
	And my post has author with name "LN"
	And my post was published on "May 22, 2010"
	When I go to the homepage
	Then I should see "My post"
	And I should see "This is my post."
	And I should see "LN"
	And I should see "May 22, 2010"
	