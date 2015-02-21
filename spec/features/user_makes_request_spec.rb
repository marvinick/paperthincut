require 'spec_helper'

feature "User makes request" do
  scenario 'User succesfully makes request' do
    visit request_path
    fill_in ("Name", with: "Daddy")
    fill_in ("Email", with: "daddy@daddy.com")
    fill_in ("Additional", with: "yayayayayyayaya")
    click_button "Create Request"
    expect(current_path).to eq(root_path)
  end

  scenario 'User un-succesfully makes request' do
  end
end