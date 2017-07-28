require 'test_helper'

class ResultsControllerTest < ActionDispatch::IntegrationTest
  test "should get suggestion" do
    get results_suggestion_url
    assert_response :success
  end

end
