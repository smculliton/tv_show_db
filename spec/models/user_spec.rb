require 'rails_helper'

RSpec.describe User do 
  describe 'validations' do 
    it { should validate_presence_of :username }
    it { should validate_uniqueness_of :username }
    it { should validate_presence_of :password }
  end
end