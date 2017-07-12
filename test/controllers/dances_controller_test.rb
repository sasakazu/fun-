require 'test_helper'

class DancesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get dances_new_url
    assert_response :success
  end

  test "should get show" do
    get dances_show_url
    assert_response :success
  end

end
