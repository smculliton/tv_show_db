require 'rails_helper'

RSpec.describe User do 
  describe 'validations' do 
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :password }

    it { should have_many(:followers).through(:following_users) }
    it { should have_many(:followees).through(:followed_users) }
  end

  it 'can have followers' do 
    users = create_list(:user, 10)
    first_user = users.first 

    users[1..9].each do |user| 
      Follow.create!(follower_id: user.id, followee_id: first_user.id)
    end

    expect(first_user.followers.count).to eq(9)
  end
end