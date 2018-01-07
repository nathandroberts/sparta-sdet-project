When("I click submit new video") do
  videos_page.submit_new_video_link
end

And("I fill in the form") do
  submit_new_video_page.fill_in_title('UFC 219: Fight Motion')
  submit_new_video_page.fill_in_description('Take a slow motion trip through the final UFC event of year at UFC 219 where Cris Cyborg retained her featherweight belt.')
  submit_new_video_page.fill_in_embed('<iframe width="560" height="315" src="https://www.youtube.com/embed/DcB_X00Lq10" frameborder="0" gesture="media" allow="encrypted-media" allowfullscreen></iframe>')
  submit_new_video_page.fill_in_thumbnail('https://i.ytimg.com/vi/DcB_X00Lq10/hqdefault.jpg?sqp=-oaymwEXCPYBEIoBSFryq4qpAwkIARUAAIhCGAE=&rs=AOn4CLCSp0ftqd6YMnfHS1OzjdeQjjscXg')
end

And("I click save video") do
  submit_new_video_page.click_save
end

Then("I am sent to the videos page and view the link for the video") do
  videos_page.video_title_search('UFC 219: Fight Motion')
end

When("I click on the newly submitted video") do
  videos_page.click_chosen_video('UFC 219:')
end

When("I change the title") do
  submit_new_video_page.fill_in_title('UFC 219: Highlights')
end

Then("I am sent to the videos page and view the new title") do
  videos_page.video_title_search('UFC 219: Highlights')
end

When("I click on the delete button") do
  show_page.click_delete_button
end

Then("I am sent to the videos page and the new video is not present") do
  expect(page).not_to have_content('UFC 219: Highlights')
end
