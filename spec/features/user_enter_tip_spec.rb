require 'spec_helper'

feature "user enters tip" do
  scenario "no authentication" do
    visit root_path
    click_on "Tips"
    click_on "Month"
    click_on "Week"
  end
end