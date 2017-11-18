require 'test_helper'

class PerfilControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get perfil_inicio_url
    assert_response :success
  end

  test "should get inversor" do
    get perfil_inversor_url
    assert_response :success
  end

  test "should get talentos" do
    get perfil_talentos_url
    assert_response :success
  end

  test "should get creador" do
    get perfil_creador_url
    assert_response :success
  end

end
