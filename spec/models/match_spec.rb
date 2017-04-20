require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "validations" do
    it "is invalid without a match_id" do
      match = Match.new(match_id: "")
      match.valid?
      expect(match.errors).to have_key(:match_id)
    end
  end

  describe "association with user" do
    let!(:user) { create :user }
    let(:match) { create :match, user: user }

    it "is valid without a user" do
      expect(user.errors).to_not have_key(:user)
    end
  end
end
