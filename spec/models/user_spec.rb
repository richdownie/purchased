require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  describe "Validations" do
    describe "#email" do
      it "should error on missing email" do
        user = Factory.build(:user, :email => nil)
        user.should_not be_valid
        user.errors_on(:email).should_not be_blank
      end
    end
  end  
  
  describe "Add Item" do
    it "should allow a user to add an item" do
      @user = Factory.build(:user)
      @user.save
      @user.items.create(:name => "Item2")
    end
    it "should not have to be unique" do
      @user = Factory.build(:user)
      @user.save
      @user.items.create(:name => "Item2")
      @user.items.create(:name => "Item2")
    end
  end
end