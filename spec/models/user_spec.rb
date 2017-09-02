require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do

  describe "user model validations" do

    before :each do
      @user = User.new(name: "Example User", email: "user@example.com")
    end

    it "test user should be vaild" do
      expect(@user).to be_valid
    end

    it "name should be present" do
      @user.name = " "
      expect(@user).to_not be_valid
    end

    it "email should be present" do
      @user.email = " "
      expect(@user).to_not be_valid
    end

    it "name should not exceed 50 characters" do
      @user.name = "a" * 51
      expect(@user).to_not be_valid
    end

    it "email should not exceed 255 characters" do
      @user.email = "a" * 244 + "@example.com"
      expect(@user).to_not be_valid
    end

    it "email validation should accept valid email addresses" do
      valid_addresses = %w[user@example.com USER@foo.COM A_US_ER@foo.bar.org first.last@foo.jp alice+bob@baz.cn]
      valid_addresses.each do |address|
        @user.email = address
        expect(@user).to be_valid
      end
    end

    it "email validation should reject invalid email addresses" do
      invalid_addresses = %w[user@example,com user_at_foo.org user.name@example. foo@bar_baz.com foo@bar+baz.com foo@bar..com]
      invalid_addresses.each do |address|
        @user.email = address
        expect(@user).to_not be_valid
      end
    end

    it "email addresses should be unique" do
      duplicate_user = @user.dup
      duplicate_user.email = @user.email.upcase
      @user.save
      expect(duplicate_user).to_not be_valid
    end



  end

end
