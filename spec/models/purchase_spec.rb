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
end