Given('I visit the landing page') do
  visit '/'
end

Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Given("the following articles exists") do |table|
  table.hashes.each do |article|
    FactoryBot.create(:article, article)
  end
end

When("I click {string} link") do |link|
  click_link link
  end

When("I fill in {string} with {string}") do |field_name, content|
  fill_in field_name, with: content
end

When("I click {string} button") do |button|
  click_button button
end

Then("I should be on {string} page") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end