Given(/^I am on a starting page (.*)$/) do |start|
  what_page(start)
end

When(/^I click on a link in the nav bar (.*)$/) do |finish|
  what_link(finish)
end

Then(/^I am sent to the correct page (.*)$/) do |finish|
  media_page.title_check(finish)
end

Given("I am on the videos page") do
  what_page('videos')
end

When("I click on a video link") do
  videos_page.click_chosen_video('Ultimate Knockouts: Rising Stars')
end

And("I click on the edit button") do
  show_page.click_edit_button
end

Then("I am sent to the edit page for that video") do
  edit_page.title_check('edit')
  expect(edit_page.title_field_text).to eq('Ultimate Knockouts: Rising Stars')
end
