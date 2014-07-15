require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  test "should get show" do
    get :show, id: users(:praveen).profile_name
    assert_response :success
    assert_template 'profiles/show'
  end

  test "should get 404 page when profile name not found" do
  	get :show, id: "does not exist"
  	assert_response :not_found
  end

   test "that variables are assigned correctly" do
  	get :show, id: users(:praveen).profile_name
  	assert assigns(:user)
  	assert assigns(:status)
  end

  test "all status belongs to given profile_name" do
  	get :show, id: users(:praveen).profile_name
  	assert assigns(:status).each do |status|
  		assert_equal status.user,users(:praveen)
  	end
  end

end
