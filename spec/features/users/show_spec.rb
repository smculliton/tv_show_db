require 'rails_helper'

RSpec.describe 'the User show' do 
  before(:each) do 
    @user1 = create(:user)
    @users = create_list(:user, 5)

    visit "/users/#{@user1.id}"
  end

  it 'shows the users username' do 
    expect(page).to have_content(@user1.username)
  end

  it 'shows all users the user currently follows' do 
    followee = @users.first
    Follow.create!(follower_id: @user1.id, followee_id: followee.id)

    visit "/users/#{@user1.id}"

    within '#followees' do 
      expect(page).to have_content(followee.username)
    end
  end

  it 'shows users that the user is not following yet' do 
    within '#suggested_follows' do 
      @users.each do |user|
        expect(page).to have_content(user.username)
      end
    end
  end

  it 'has link to follow a suggested user' do 
    followee = @users.first

    within "#user-#{followee.id}" do 
      click_link 'Follow'
    end

    expect(current_path).to eq("/users/#{@user1.id}")
    within "#followees" do 
      expect(page).to have_content(followee.username)
    end
  end
end