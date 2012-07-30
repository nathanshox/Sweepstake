require 'test_helper'

class LeaderboardsControllerTest < ActionController::TestCase
  test "should get countries" do
    get :countries
    assert_response :success
  end

  test "should get people" do
    get :people
    assert_response :success
  end

end
