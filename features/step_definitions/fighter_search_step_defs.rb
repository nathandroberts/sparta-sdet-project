When("I enter a name") do
  videos_page.fill_in_fighter_search('northcutt')
end

And("I click search") do
  videos_page.click_fighter_search
end

Then("I am sent to the search page and can see that fighters details") do
  expect(page).to have_content('Northcutt')
end
