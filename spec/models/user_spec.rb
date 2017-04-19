require 'rails_helper'

RSpec.describe User, type: :model do
  describe "validations" do
    it "is invalid without an email" do
      user = User.new(email: "")
      user.valid?
      expect(user.errors).to have_key(:email)
    end

    it "is invalid without a password" do
      user = User.new(password: "")
      user.valid?
      expect(user.errors).to have_key(:password)
    end

    it "isn't admin by default" do
      expect(User.new).to_not be_admin
    end

    it "isn't teacher by default" do
      expect(User.new).to_not be_teacher
    end
  end
end
