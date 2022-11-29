require 'rails_helper'

RSpec.describe ViewingParty, type: :model do
  describe 'relationship' do
    it { should have_many :user_viewing_parties }
    it { should have_many(:users).through(:user_viewing_parties) }
  end

  describe 'validations' do
    it { should validate_presence_of :date }
    it { should validate_presence_of :start_time }
  end
end