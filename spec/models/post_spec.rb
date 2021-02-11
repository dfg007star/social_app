require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'validations tests' do
    it { is_expected.to belong_to(:user) }

    it { is_expected.to validate_presence_of(:user_id) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to validate_presence_of(:content) }
    it { is_expected.to validate_length_of(:title).is_at_most(30) }
    it { is_expected.to validate_length_of(:content).is_at_most(140) }
  end

  context 'test sending post' do
    it 'send all data' do
      user = create(:user)
      subject.attributes = attributes_for(:post)
      subject.user = user
      is_expected.to be_valid
    end
  end
end
