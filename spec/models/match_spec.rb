require 'rails_helper'

RSpec.describe Match, type: :model do
  describe "validations" do
    it "is invalid without a match_id" do
      match = Match.new(match_id: "")
      match.valid?
      expect(match.errors).to have_key(:match_id)
    end

    it "is invalid without a user_id" do
      user = Match.new(user_id: "")
      user.valid?
      expect(user.errors).to have_key(:user_id)
    end

    it "is invalid without a date" do
      date = Match.new(date: "")
      date.valid?
      expect(date.errors).to have_key(:date)
    end
  end

  describe "association with user" do
    let(:student1) { create :user }
    let(:student2) { create :user }

    let(:match) { create :match, match_id: student1.id, user_id: student2.id }

    it "belongs to students" do
      expect(match.match_id).to eq(student1.id)
      expect(match.user_id).to eq(student2.id)
    end
  end
end
