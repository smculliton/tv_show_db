require 'rails_helper'

RSpec.describe 'the new tv show page' do 
  # it 'links from the index' do
  #   visit '/shows'

  #   click_button 'Add New Show'

  #   expect(current_path).to eq('/shows/new')
  # end

  it 'adds a show and redirects to index' do 
    visit '/shows/new'

    fill_in 'Show ID', with: 550
    click_button 'Add Show'

    expect(current_path).to eq('/shows')
    expect(page).to have_content('Desperate Housewives')
    expect(page).to have_content('Drama')
    expect(page).to have_content('Comedy')
    expect(page).to have_content('Mystery')
    expect(page).to have_content('7.7')
  end
end