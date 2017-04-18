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
  end
end
