require 'rails_helper'

RSpec.describe 'User features' do
  it 'displays the name of the page header and links to the Login page' do
    visit('/users/sign_in')
    expect(page).to have_content('Please log in')
    click_link('Sign up')
    expect(current_path).to eql('/users/sign_up')
    expect(page).to have_content('User registration')
  end
end
