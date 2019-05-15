require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get inicio" do
    get pages_inicio_url
    assert_response :success
  end

  test "should get tienda" do
    get pages_tienda_url
    assert_response :success
  end

  test "should get sustancias" do
    get pages_sustancias_url
    assert_response :success
  end

  test "should get informacion" do
    get pages_informacion_url
    assert_response :success
  end

  test "should get contacto" do
    get pages_contacto_url
    assert_response :success
  end

  test "should get testeado" do
    get pages_testeado_url
    assert_response :success
  end

  test "should get compras" do
    get pages_compras_url
    assert_response :success
  end

end
