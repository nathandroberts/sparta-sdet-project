Feature: Videos page
  as I user
  I want to be able to submit a new video,
  edit it and delete it

  Scenario: If I fill in the new video form and click save my video will appear on the index page

    Given I am on the videos page
    When I click submit new video
    And I fill in the form
    And I click save video
    Then I am sent to the videos page and view the link for the video

  Scenario: If I edit the title of the video the changes will appear on the videos page

    Given I am on the videos page
    When I click on the newly submitted video
    And I click on the edit button
    And I change the title
    And I click save video
    Then I am sent to the videos page and view the new title

  Scenario: If i delete the video it will dissapear from the videos page

    Given I am on the videos page
    When I click on the newly submitted video
    And I click on the delete button
    Then I am sent to the videos page and the new video is not present
