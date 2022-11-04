require 'rails_helper'

RSpec.describe 'the Logout page' do 
  before(:each) do 
    @user = User.create!(username: 'steviewonder', password: 'iluvpiano666')

    visit '/login'

    fill_in 'Username', with: 'steviewonder'
    fill_in 'Password', with: 'iluvpiano666'
    click_button 'Login'
  end

  it 'logs a user out' do 
    click_button 'Logout'

    expect(current_path).to eq('/')
    expect(page).to_not have_content('Logged in as:')
    expect(page).to have_content('You have been logged out.')
  end
end