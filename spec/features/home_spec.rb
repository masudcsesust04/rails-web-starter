require 'rails_helper'

RSpec.describe 'Home features', type: :feature do
  user = FactoryGirl.create(:user)
  login_as(user, :scope => :user)

  it 'displays the name of the app' do
    visit('/')
    expect(page).to have_content('Rails web starter')
    expect(page).to have_content('Home#Index')
  end
end
