require 'test_helper'

class InvertirControllerTest < ActionDispatch::IntegrationTest
  test "should get invertir" do
    get invertir_invertir_url
    assert_response :success
  end

end
