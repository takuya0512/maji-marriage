require 'test_helper'

class SeatingsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get seatings_index_url
    assert_response :success
  end
end
