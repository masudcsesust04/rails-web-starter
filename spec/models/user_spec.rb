require 'rails_helper'

RSpec.describe User, type: :model do

  pending "add some examples to (or delete) #{__FILE__}"

  describe 'validations' do
    it 'should be invalid if email is not present' do
      expect(build(:user, email: nil)).to_not be_valid
    end

    it 'should be invalid if email is not unique' do
      email = 'example@example.com'
      create(:user, email: email)
      expect(build(:user, email: email)).to_not be_valid
    end

    it 'should be invalid if password is not present' do
      expect(build(:user, password: nil)).to_not be_valid
    end

  end
end
