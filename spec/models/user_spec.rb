require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe User do
  describe "Validations" do
    describe "#email" do
      it "should get an error if email is missing" do
        user = Factory.build(:user, :email => nil)
        user.should_not be_valid
        user.errors_on(:email).should_not be_blank
      end
    end
  end  
end