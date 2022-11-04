require 'rails_helper'

RSpec.describe 'the User show' do 
  before(:each) do 
    @user1 = User.create!(username: 'steviewonder', password: 'iluvpiano666')
    visit "/users/#{@user1.id}"
  end

  it 'shows the users username' do 
    expect(page).to have_content(@user1.username)
  end
end