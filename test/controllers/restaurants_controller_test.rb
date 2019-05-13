require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  test "should get Reviews" do
    get restaurants_Reviews_url
    assert_response :success
  end

end
