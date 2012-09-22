
Given /^I am on the home page$/ do
  visit_page HomePage
end

When /^I enter a search for "(.*?)"$/ do |text|
  on_page HomePage do |page|
    page.search text
  end
end

Then /^I should find the churches location$/ do
  @browser.html.should include("Reynoldsburg Baptist Church is located at 887 Rosehill Rd. Reynoldsburg, OH 43068")
end
