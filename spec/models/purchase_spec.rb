require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Purchase do
  describe "Validations" do
    describe "#name" do
      it "should get an error if name is missing" do
        purchase = Factory.build(:purchase, :name => nil)
        purchase.should_not be_valid
        purchase.errors_on(:name).should_not be_blank
      end
      it "should be valid with purchase name" do
        purchase = Factory.build(:purchase)
        purchase.should be_valid
        purchase.errors_on(:name).should be_blank
      end
    end
  end  
  
  describe "Queries" do
    it "should find all purchases" do
      @user = Factory.build(:user)
      10.times do
        Purchase.create(:name => "item" + rand(9999).to_s, :user_id => @user)
      end
      purchases = Purchase.find:all
      purchases.count.should == 10
    end
  end
end