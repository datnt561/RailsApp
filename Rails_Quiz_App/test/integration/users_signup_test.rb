require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  
  test "invalid signup information" do 
  	get signup_path
  	assert_nodifference 'User.count' do
  		post users_path, user: {username: "",
  								password: "dat",
  								password_confirmation: "",
  								fullname: "ssf",
  								email: "fewf"
  								}

  		end
  	
  end
end
