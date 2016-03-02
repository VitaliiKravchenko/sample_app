include ApplicationHelper

def valid_signin(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
end

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    expect(page).to have_selector('div.alert.alert-error', text: message)
  end
end

def valid_information
	fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "user@example.com"
    fill_in "Password",     with: "foobar"
    fill_in "Confirmation", with: "foobar"
end

def invalid_information
	fill_in "Name",         with: "Example User"
    fill_in "Email",        with: "example.com"
    fill_in "Password",     with: "foobr"
    fill_in "Confirmation", with: "foar"
end