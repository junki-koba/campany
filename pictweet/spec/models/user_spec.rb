require 'rails_helper'

describe User do
  describe '#create' do

    it "is invalid without a nickname,email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without a nickname" do
      user = build(:user, nickname: nil)
      user.valid?
      expect(user.errors[:nickname]).to include("can't be blank")
    end

    it "is invalid without a email" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password_confirmation]).to include("can't be blank")
    end

    it "is invalid without a password_confirmation although with a password" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password]).to include("doesn't match Password")
    end

    it "is invalid without a nickname that has more than 7 characters" do
      user = build(:user, nickname: "aaaaa")
      user.valid?
      expect(user.errors[:nickname]).to include("is too long (maximum is 6 characters)")
    end

    it "is invalid without a nickname that has less than 6 characters" do
      user = build(:user, nickname: "aaaaa")
      user.valid?
    end
    
    it "is invalid with a duplicate email address" do
      user = create(:user)
      another_user = build(:user,email:user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("has already been taken")
    end

    it "is invalid without a nickname that has more than 6 characters" do
      user = build(:user, password: "00000000",password_confirmation: "000000")
      user.valid?
      expect(user).to be_valid
    end

    it "is invalid without a nickname that has less than 5 characters" do
      user = build(:user, password: "00000000",password_confirmation: "000000")
      user.valid?
      expect(another_user.errors[:password]).to include("is too shote (minimum is 6 characters)")
    end

  end
end
