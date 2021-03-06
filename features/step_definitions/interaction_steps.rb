And "show me the page" do
  save_and_open_page
end

When(/^I go to the homepage$/) do
  visit root_path
end

When(/^I press "(.*?)"$/) do |text|
  click_button (text)
end

Then(/^I should see(?::)? "(.*?)"$/) do |text|
  page.should have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"$/) do |field, content|
  fill_in(field, with: content)
end

Then(/^I should see "(.*?)" within the activity feed$/) do |text|
  within(".activity_feed") do
    page.should have_content(text)
  end
end