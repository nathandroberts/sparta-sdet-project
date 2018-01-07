Feature: Site Navigation
  as I user
  I want to be able to click on a link
  and view the correct page

  Scenario Outline: If I click on a link I will be taken to the correct page
    Given I am on a starting page <start>
    When I click on a link in the nav bar <finish>
    Then I am sent to the correct page <finish>

    Examples:
    | start           | finish           |
    | news            | media            |
    | news            | news             |
    | news            | title_holders    |
    | news            | videos           |
    | news            | submit_new_video |
    | media           | news             |
    | title_holders   | news             |
    | videos          | news             |
    | submit_new_video| news             |

  Scenario: If I click on a video then click edit I will be taken to the edit page
    Given I am on the videos page
    When I click on a video link
    And I click on the edit button
    Then I am sent to the edit page for that video
