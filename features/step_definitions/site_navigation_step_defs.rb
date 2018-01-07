Given(/^I am on a starting page (.*)$/) do |start|
  what_page(start)
end

When(/^I click on a link in the nav bar (.*)$/) do |finish|
  what_link(finish)
end

Then(/^I am sent to the correct page (.*)$/) do |finish|
  media_page.title_check(finish)
end
