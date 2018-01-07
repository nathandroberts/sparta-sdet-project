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
    | media           | news             |
    | media           | media            |
    | media           | title_holders    |
    | media           | videos           |
    | media           | submit_new_video |
    | news            | media            |
    | title_holders   | media            |
    | videos          | media            |
    | submit_new_video| media            |
