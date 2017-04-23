FactoryGirl.define do
  factory :match do
    date            { Date.today   }
    match_id        { build(:user) }
    user_id         { build(:user) }
  end
end
