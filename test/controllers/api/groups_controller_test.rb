require 'test_helper'
class Api::GroupsControllerTest < ActionController::TestCase
#  before do
#  end

  test "list all groups" do
    params = {}    
    get :list_groups, params
    assert_response :success
    assert_equal Mime::JSON, response.content_type
    json = JSON.parse(@response.body)
    assert json.length > 0
    
  end

  test "list single group" do
    params = {id: 1}
    get :show_group, params
    assert_response :success
    assert_equal Mime::JSON, response.content_type
    json = JSON.parse(@response.body)
    assert json.length > 0
    
  end
  

end

=begin
  it "empty event sponsors return false " do
    params = {eventId: 0}
    get :sponsor, params
    @response.body = false
    assert_response :success
    assert_equal Mime::JSON, response.content_type
  end

  it "valid event sponsors return data " do
    params = {eventId: 1}
     get :sponsor, params
     json = JSON.parse(@response.body)
     assert json.length > 0
    assert_response :success
    assert_equal Mime::JSON, response.content_type
  end


  it "event by appid return data " do
    params = {appid: 1}
    get :index, params
    json = JSON.parse(@response.body)
    assert json.length > 0
    assert_response :success
    assert_equal Mime::JSON, response.content_type
  end
=end