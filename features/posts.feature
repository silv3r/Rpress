Feature: Post Management & Display
	In order to provide quality content
	As an author
	I need to be able to manage posts
	
	Scenario: Show post
		Given I have a post
		And my post has title "My post"
		And my post has body "This is my post."
		And my post has author with name "LN"
		And my post was published on "May 22, 2010"
		When I display the post
		Then I should see "My post"
		And I should see "This is my post."
		And I should see "LN"
		And I should see "May 22, 2010"
		
	Scenario: Create post
		Given I have a user named "LN"
		When I go to the post creation page
		And I fill in "post[title]" with "My post Title"
		And I fill in "post[body]" with "This is my post Body"
		And I select "LN" from "post[author_id]"
		And I fill in "post[published_on]" with "Jun 14, 2011"
		And I press "Save Post"
		Then show me the page
		Then I should see "My post Title"
		And I should see "This is my post Body"
		And I should see "LN"
		And I should see "Jun 14, 2011"