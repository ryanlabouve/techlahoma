require 'test_helper'

class UserGroupControllerTest < ActionController::TestCase

  test "should get index" do
    params = {}
    get :index, params
    assert_response :success
  end
end
