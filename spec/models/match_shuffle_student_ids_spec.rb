require 'rails_helper'

RSpec.describe Match, type: :model do

  describe "shuffle_student_ids" do

    it "shuffles the user ids in an array" do
      expect(Match.shuffle_student_ids).to_not eq(Match.student_ids)
    end
  end

end
