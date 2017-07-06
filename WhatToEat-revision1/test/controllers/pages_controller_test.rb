require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get weather" do
    get pages_weather_url
    assert_response :success
  end

  test "should get suggestions" do
    get pages_suggestions_url
    assert_response :success
  end

end
