require 'rails_helper'

RSpec.describe Show do 
  describe 'validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :genre1 }
    it { should validate_numericality_of :rating  }
  end
end