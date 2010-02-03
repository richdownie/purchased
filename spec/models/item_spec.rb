require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Item do
  describe "Validations" do
    describe "#name" do
      it "should get an error if name is missing" do
        item = Factory.build(:item, :name => nil)
        item.should_not be_valid
        item.errors_on(:name).should_not be_blank
      end
      it "should be valid with purchase name" do
        item = Factory.build(:item)
        item.should be_valid
        item.errors_on(:name).should be_blank
      end
    end
  end  

  describe "Queries" do
    it "should find all items" do
      @user = Factory.build(:user)
      10.times do
        Item.create(:name => "item1" + rand(9999).to_s, :user_id => @user)
      end
      items = Item.find:all
      items.count.should == 10
    end
  end
end