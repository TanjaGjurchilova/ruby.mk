Feature: Write post comments
	In order to say something about a post
	As a visitor
	I want to be able to write comments on posts
 
	Scenario: View comment form
		Given site has post with id "1"
		When I go to post with id "1"
		Then should see a comment form
		
	Scenario: Create new comment
		Given site has post with id "1"
		When I go to post with id "1"
		And I fill in the comment name "Dalibor"
		And I fill in the comment email "dalibor.nasevic@gmail.com"
		And I fill in the comment content "My first comment"
		And I press "Comment"
		Then I should see "Your comment was successfully created."
		And I should see "My first comment"