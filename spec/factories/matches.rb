FactoryGirl.define do
  factory :match do
    match_id        { Faker::Number.between(1, 10) }
    user_id         { build(:user) }
  end
end
