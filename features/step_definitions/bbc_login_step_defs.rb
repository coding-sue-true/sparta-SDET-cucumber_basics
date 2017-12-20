Given("I access the bbc login page") do
  bbc_homepage.visit_home_page
  bbc_homepage.click_sign_in_link
end

And("I input incorrect username details") do
  bbc_sign_in_page.fill_in_username('Ruchg')
end

And("I input incorrect password details") do
  bbc_sign_in_page.fill_in_password('jfbsjahbsahj')
end

When("I input an incorrect username") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error for not finding the account") do
  bbc_sign_in_page.incorrect_username_text
end

And("I input any username details") do
  bbc_sign_in_page.fill_in_username('coding_sue@icloud.com')
end

And("I input a incorrect password as 1234abc") do
  bbc_sign_in_page.fill_in_password('jfb')
end

When("I input an incorrect username") do
  bbc_sign_in_page.click_sign_in_button
end

Then("I receive an error stating it needs to be at least 8 chars") do
  bbc_sign_in_page.incorrect_password_text
end
