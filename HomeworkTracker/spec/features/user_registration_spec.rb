require 'rails_helper'
#1
describe "user registration", type: :feature, js: true do
  it "should allow user registration" do
    visit root_path
    click_link 'Log In'
    click_link 'Sign up'
    fill_in "Email", with: "hockeywalt@yahoo.com"
    fill_in "Name", with: "Sam"
    fill_in "Password", with: "Sinch0n12"
    fill_in "Password confirmation", with: "Sinch0n12"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
    expect(page).to have_content("Log Out")
    expect(page).not_to have_content("Log In")
  end
end