require 'test_helper'

class CampanasControllerTest < ActionDispatch::IntegrationTest
  test "should get listar" do
    get campanas_listar_url
    assert_response :success
  end

  test "should get buscar" do
    get campanas_buscar_url
    assert_response :success
  end

  test "should get visualizar" do
    get campanas_visualizar_url
    assert_response :success
  end

  test "should get aportar" do
    get campanas_aportar_url
    assert_response :success
  end

end
