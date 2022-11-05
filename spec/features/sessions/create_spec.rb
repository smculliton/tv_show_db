require 'rails_helper'

RSpec.describe 'the Login page' do 
  before(:each) do 
    @user = User.create!(username: 'steviewonder', password: 'iluvpiano666')

    visit '/login'
  end
  it 'logs into account' do 
    within '#login' do 
      fill_in 'Username', with: 'steviewonder'
      fill_in 'Password', with: 'iluvpiano666'
      click_button 'Login'
    end
    expect(current_path).to eq("/users/#{@user.id}")
    expect(page).to have_content("Logged in as: #{@user.username}")
  end
end