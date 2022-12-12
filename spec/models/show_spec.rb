require 'rails_helper'

RSpec.describe Show do 
  describe 'validations' do
    it { should validate_presence_of :name }
  end

  describe 'relationships' do 
    it { should have_many :user_shows }
    it { should have_many(:users).through(:user_shows) }
  end
end