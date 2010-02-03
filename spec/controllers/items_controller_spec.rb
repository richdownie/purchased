require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ItemsController do
  describe "index" do
    integrate_views
    context "when logged in as a user" do
      before do
        user = Factory.build(:user)
        
        @user_session = UserSession.new(user)
        get :index
      end

      it "should be successful" do
        # response.should be_success
        # response.should render_template('index')
        # response.should have_text(/Items/)
      end
    end
    
    context "when not logged in as a user" do
      before do
        get :index
      end
      
      it "should not be successful" do
        response.should_not be_success
      end
    end
  end
end