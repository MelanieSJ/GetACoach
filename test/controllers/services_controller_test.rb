require 'test_helper'

class ServicesControllerTest < ActionDispatch::IntegrationTest
  test "should get results" do
    get services_results_url
    assert_response :success
  end

end
