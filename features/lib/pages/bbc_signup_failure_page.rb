require 'capybara/dsl'

class BbcSignUpPage
  include Capybara::DSL


  DOB_DAY_INPUT = 'day-input'
  DOB_MONTH_INPUT = 'month-input'
  DOB_YEAR_INPUT = 'year-input'
  CONTINUE_BUTTON = 'submit-button'
  EMAIL_FIELD_ID = 'user-identifier-input'
  PASSWORD_FIELD_ID = 'password-input'
  PASSWORD_ERROR_MESSAGE = 'form-message-password'
  DOB_ERROR_MESSAGE = 'form-message-dateOfBirth'
  POSTCODE_FIELD = 'postcode-input'

  def dob_day_field(day)
    fill_in(DOB_DAY_INPUT, with: day)
  end

  def dob_month_field(month)
    fill_in(DOB_MONTH_INPUT, with: month)
  end

  def dob_year_field(year)
    fill_in(DOB_YEAR_INPUT, with: year)
  end

  def click_continue_button
    find_button(CONTINUE_BUTTON).click
  end

  def fill_in_password(password)
    fill_in(PASSWORD_FIELD_ID, with: password)
  end

  def email_field
    find_field(:id, EMAIL_FIELD_ID)
  end

  def fill_in_postcode(postcode)
    fill_in(POSTCODE_FIELD, with: postcode)
  end

  def fill_in_email(email)
    fill_in(EMAIL_FIELD_ID, with: email)
  end

  def password_error_message
    find(:id, PASSWORD_ERROR_MESSAGE).text
  end

  def dob_error_message
    find(:id, DOB_ERROR_MESSAGE).text
  end


end
