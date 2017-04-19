require 'rails_helper'

RSpec.describe Profile, type: :model do
  describe "validations" do
    it "is invalid without a first_name" do
      user = Profile.new(first_name: "")
      user.valid?
      expect(user.errors).to have_key(:first_name)
    end

    it "is invalid without a last_name" do
      user = Profile.new(last_name: "")
      user.valid?
      expect(user.errors).to have_key(:last_name)
    end

    it "photo is set by default" do
      profile_photo = Profile.new
      expect(profile_photo.photo).to_not be_empty
    end
  end

  describe "association with user" do
    let!(:user) { create :user }
    let(:profile) { create :profile, user: user }

    it "is valid without a user" do
      expect(user.errors).to_not have_key(:user)
    end
  end
end
