require 'test_helper'

class ActivitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get activites_index_url
    assert_response :success
  end

end
