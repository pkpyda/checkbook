require 'test_helper'

class CustomRoutesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "register should get signup page" do
  	get "register"
  	assert_response :success
  end

  test "signin should get signin page" do
  	get "signin"
  	assert_response :success
  end

  test "signout should get root page" do
  	get "signout"
  	assert_response :redirect
  	assert_redirected_to :root
  end

  test "profile name given redirects to show page in profile controller" do
    get "/praveenkumar"
    assert_response :success
  end
  
end
