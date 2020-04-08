require 'rails_helper'

def fill_and_submit_login_form(user_data)
  within 'form' do
    fill_in id: 'email', with: user_data[:email]
    fill_in id: 'password', with: user_data[:password]
    click_on 'Login'
  end
end

user_deets = {
  email: 'jane@test.com',
  password: 'test',
}

RSpec.feature "UserLogins", type: :feature, js: true do
  before :each do 
    User.create!(
      first_name: 'Jane',
      last_name: 'Doe',
      email: 'jane@test.com',
      password: 'test',
      password_confirmation: 'test'
    )
  end

  scenario "User should be able to login with the correct credentials" do 
    visit root_path
    click_on 'Login'
    fill_and_submit_login_form user_deets

    # save_and_open_screenshot

    expect(page).to have_content("Signed in as: Jane")
    expect(page).to have_content("Logout")
  end
end
