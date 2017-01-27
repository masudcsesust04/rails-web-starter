require 'rails_helper'

RSpec.describe 'Devise', type: :routing do

  describe 'users routing' do

    it 'routes to user sign in ' do
      expect(get: '/users/sign_in').to route_to('devise/sessions#new')
      expect(post: '/users/sign_in').to route_to('devise/sessions#create')
    end

    it 'routes to user sign out' do
      expect(delete: '/users/sign_out').to route_to('devise/sessions#destroy')
    end
  end
end