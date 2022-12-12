require 'rails_helper'

RSpec.describe UserShow do 
  describe 'relationships' do 
    it { should belong_to :user } 
    it { should belong_to :show } 
  end
end