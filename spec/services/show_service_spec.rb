require 'rails_helper'

RSpec.describe ShowService do
  it 'searches' do 
    x = ShowService.search('x-files')
    # require 'pry'; binding.pry
    x.each do |show|
      expect(show[:show].keys.include?(:genres)).to be_truthy
    end
  end
end