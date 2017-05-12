require 'rails_helper'

RSpec.describe User, :type => :model do
  describe '.scopes' do
    let!(:user_1) { create(:user) }
    let!(:user_2) { create(:user) }
    let!(:user_3) { create(:user, active: false) }

    it '#active should return only active users' do
      expect(User.active).to match_array([user_1, user_2])
    end

    let(:user_4) { create(:user, email: nil) }
    it '#with_email should not return users without email' do
      expect(User.with_email).to_not include(user_4)
    end
  end

  describe '#fullname' do
    subject { create(:user, name: 'John', surname: 'Doe') }

    it { is_expected.to be_instance_of(User) }

    it "should return full name" do
      expect(subject.fullname).to eq 'John Doe'
    end
  end
end
