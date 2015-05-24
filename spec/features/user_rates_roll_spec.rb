require 'spec_helper'

feature "User rates roll" do
  scenario "no auth" do
    visit root_path
  end
end