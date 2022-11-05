require 'rails_helper'

RSpec.describe ShowService do 
  describe '#search' do 
    it 'searches the api for a show' do
      ShowService.search('Lost')
    end
  end
end