require 'rails_helper'

RSpec.describe Racer, type: :model do
  
  before { build :racer}

  describe 'associations' do

    it { is_expected.to have_many(:placements) }
    it { is_expected.to have_many(:races) }
  end 

  describe 'validations' do

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:born_at) } 
  end 
end
