require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

Factory.factories.keys.each do |factory|
  describe "#{factory.to_s.titleize} Factory" do
    describe "default #{factory}" do
      attr_reader :model
      before do
        @model = Factory.build(factory)
      end

      it "should not be nil" do
        model.should_not be_nil
      end

      it "should be valid" do
        model.should be_valid
      end
    
      it "should be able to save without error" do
        model.save!
      end
    end
  end
end


# 
# When you need to test a specific factory, uncomment this and set the appropriate factory.
# Then run a focused spec from the before block.
#
# describe "Focused Factory" do
#   describe "default" do
#     attr_reader :model
#     before do
#       @model = Factory.build(:workout_program)
#     end
# 
#     it "should not be nil" do
#       model.should_not be_nil
#     end
# 
#     it "should be valid" do
#       model.should be_valid
#     end
#   
#     it "should be able to save without error" do
#       model.save!
#     end
#   end
# end
