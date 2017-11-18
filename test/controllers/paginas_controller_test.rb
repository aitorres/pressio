require 'test_helper'

class PaginasControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get paginas_inicio_url
    assert_response :success
  end

  test "should get quienes-somos" do
    get paginas_quienes-somos_url
    assert_response :success
  end

  test "should get equipo" do
    get paginas_equipo_url
    assert_response :success
  end

end
