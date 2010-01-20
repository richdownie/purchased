When /I sign in/ do
  within("//form[@id='new_user_session']") do
    fill_in 'user_session_email', :with => 'rdownie@sample.org'
    fill_in 'user_session_password', :with => 'testing1'
  end
  click_link 'Submit'
end
