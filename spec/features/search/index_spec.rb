require 'rails_helper'

RSpec.describe 'the search index' do 
  it 'has a search field' do 
    visit '/search'

    expect(page).to have_field(:search)
    expect(page).to have_button('Search')
  end

  xit 'searches for a show' do 
    visit '/search'

    fill_in 'Search', with: 'Lost'
    click_button 'Search'

    expect(current_path).to eq('/search')
    expect(page).to have_content('1: Lost')
  end

  xit 'each show has an add show button that adds the show info to the index' do
    visit '/search'

    fill_in 'Search', with: 'Lost'
    click_button 'Search'

    click_button 'Add 1: Lost'

    expect(current_path).to eq('/shows')
    expect(page).to have_content('Lost')
  end


end
