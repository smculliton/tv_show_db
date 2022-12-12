require 'rails_helper'

RSpec.describe ShowService do
  it 'searches' do 
    search = ShowService.search('x-files')

    search.each do |show|
      expect(show[:show].keys.include?(:name)).to be_truthy
    end

    search.each do |show|
      expect(show[:show].keys.include?(:genres)).to be_truthy
    end
  end

  it 'returns required info for a show' do 
    new_show = ShowService.show_info(1)

    expect(new_show[:name]).to_not eq(nil)
    expect(new_show[:genre1]).to_not eq(nil)
    expect(new_show[:rating]).to_not eq(nil)
  end
end