require 'rails_helper'

RSpec.describe 'the show index' do 
  before(:each) do 
    @lost = Show.create!(name: 'Lost', genre1: 'Drama', rating: 8.2)
    @xfiles = Show.create!(name: 'The X Files', genre1: 'Drama', genre2: 'Supernatural', rating: 10.0)
  end

  it 'lists shows' do
    visit '/shows'
    expect(page).to have_content(@lost.name)
    expect(page).to have_content(@xfiles.name)
    expect(page).to have_content(@xfiles.genre1)
    expect(page).to have_content(@xfiles.genre2)
    expect(page).to have_content(@xfiles.rating)
  end
end
