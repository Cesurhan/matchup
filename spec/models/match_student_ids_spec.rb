require 'rails_helper'

RSpec.describe Match, type: :model do

  describe "student_ids" do

    it "has an array of all user ids" do
      expect(Match.student_ids.size).to eq(4)
    end
  end

end
