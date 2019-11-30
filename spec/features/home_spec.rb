require 'rails_helper'

RSpec.describe 'Home features' do
  it 'displays the name of the app' do
    visit('/')
    expect(page).to have_content('Rails web starter.')
  end
end
