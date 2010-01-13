require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ItemsController do
  describe "index" do
    integrate_views
    context "when logged in as a user" do
      before do
        item = Factory.build(:user)
        get :index
      end
      it "should be successful" do
        response.should be_success
        response.should render_template('index')
        response.should have_text(/Items/)
      end
    end
  end
end