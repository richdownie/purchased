Given /^a user exists with email "([^\"]*])" and password "([^\"]*])"/ do |email, password|
  Factory.create(:user, :email => email, :password => password)
end