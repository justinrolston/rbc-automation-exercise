
Given /^I am on the home page$/ do
  visit HomePage
end

When /^I enter a search for "(.*?)"$/ do |text|
  on(HomePage).search text
end

Then /^I should find the churches location$/ do
  sleep 1
  @current_page.html.should include("Reynoldsburg Baptist Church is located at 887 Rosehill Rd. Reynoldsburg, OH 43068")
end
