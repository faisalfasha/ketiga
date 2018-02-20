require 'test_helper'

class StpreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stpre_index_url
    assert_response :success
  end

end
