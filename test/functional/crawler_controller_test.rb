require 'test_helper'

class CrawlerControllerTest < ActionController::TestCase
  test "should get crawl" do
    get :crawl
    assert_response :success
  end

end
