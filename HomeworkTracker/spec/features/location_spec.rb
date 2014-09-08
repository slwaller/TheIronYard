require 'rails_helper'

describe "Add Locations", type: :feature, js: true do
  it "should allow user to add location" do
    visit root_path
    click_link 'Log In'
    click_link 'Sign up'
    fill_in "Email", with: "test@test.com"
    fill_in "Name", with: "Test"
    select("Admin", :from => "Role")
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"
    visit root_path
    click_link 'Our Locations'
    click_button 'Add Location'
    fill_in "City", with: "Tokyo"
    fill_in "Description", with: "Kawaiidesu~~"
    click_button "Submit"
    expect(page).to have_content("Location was successfully added!")
  end
end