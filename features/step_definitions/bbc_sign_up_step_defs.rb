Given("I access the bbc homepage") do
  bbc_homepage.visit_home_page
end

And("I try to sign in") do
  bbc_homepage.click_sign_in_link
end

When("I click on register link") do
  bbc_sign_in_page.click_register_link
end

And("I input incorrect dob details") do
  bbc_sign_up_page.dob_day_field("32")
  bbc_sign_up_page.dob_month_field("15")
  bbc_sign_up_page.dob_year_field("1999")
end

When("I try to login") do
  bbc_sign_up_page.click_continue_button
end

Then("I receive an error for incorrect DOB details") do
  bbc_sign_up_page.dob_error_message
end


And("I input the correct dob details") do
  bbc_sign_up_page.dob_day_field("12")
  bbc_sign_up_page.dob_month_field("11")
  bbc_sign_up_page.dob_year_field("1999")
end

When("I move on to the next page") do
  bbc_sign_up_page.click_continue_button
end

And("I fill email, password, postcode and gender correctly") do
  bbc_sign_up_page.fill_in_email('test@gmail.com')
  bbc_sign_up_page.fill_in_password('abcd1234')
  bbc_sign_up_page.fill_in_postcode('SM6 8QZ')
end

When("I click Register") do
  bbc_sign_up_page.click_continue_button
end

Then("I can Register succesfully") do
  pending # Write code here that turns the phrase above into concrete actions
end
