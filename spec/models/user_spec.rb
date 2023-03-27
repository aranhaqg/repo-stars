require 'rails_helper'

RSpec.describe User, type: :model do
  subject { build(:user) }
  
  describe 'associations' do
    it { should have_many(:repositories).class_name('Repository') }
  end

  describe 'validations' do
    it { should validate_presence_of(:login) }
    it { should validate_presence_of(:github_id) }
    it { should validate_uniqueness_of(:github_id) }
  end
end
