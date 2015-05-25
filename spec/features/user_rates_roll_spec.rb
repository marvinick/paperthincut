require 'spec_helper'

feature "User rates roll" do
  scenario "no auth" do
    visit root_path
    click_on "RateIt"
    fill_in "Flavor", with: 2
    fill_in "Texture", with: 4
    fill_in "Health", with: 3
    fill_in "Visual", with: 5
    click_on "Submit"
  end
end