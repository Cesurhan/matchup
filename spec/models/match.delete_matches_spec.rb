require 'rails_helper'

RSpec.describe Match, type: :model do

  describe "delete_matches" do
    let(:student1) { create :user }
    let(:student2) { create :user }
    let!(:match)   { create :match, match_id: student1.id, user_id: student2.id}


    it "destroys matches" do
      expect{Match.delete_matches(Date.today)}.to change(Match, :count).by(-1)
    end
  end

end
