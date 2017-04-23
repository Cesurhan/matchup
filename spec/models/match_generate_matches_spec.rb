require 'rails_helper'

RSpec.describe Match, type: :model do

  describe "generate_matches" do
    let!(:student1) { create :user }
    let!(:student2) { create :user }

    it "creates new matches" do
      expect{Match.generate_matches(Date.today)}.to change(Match, :count).by(1)
    end
  end

end
