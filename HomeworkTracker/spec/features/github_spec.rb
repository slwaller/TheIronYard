require 'rails_helper'
#2
describe "github redirect", type: :feature, js: true do
  it "should allow user to click link to go to GitHub" do
    visit root_path
    click_link 'gitlink'
end
end
