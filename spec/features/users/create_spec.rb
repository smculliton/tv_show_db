require 'rails_helper'

RSpec.describe 'the user create page' do 
  it 'creates a new user' do 
    visit new_user_path

    fill_in 'Username', with: 'steviewonder'
    fill_in 'Password', with: 'iluvpiano666'

    click_button 'Submit'

    user = User.where(username: 'steviewonder').first
    expect(current_path).to eq("/users/#{user.id}")
    expect(page).to have_content(user.username)
  end 
end