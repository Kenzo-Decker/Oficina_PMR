require 'test_helper'

class FormularioCertosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @formulario_certo = formulario_certos(:one)
  end

  test "should get index" do
    get formulario_certos_url
    assert_response :success
  end

  test "should get new" do
    get new_formulario_certo_url
    assert_response :success
  end

  test "should create formulario_certo" do
    assert_difference('FormularioCerto.count') do
      post formulario_certos_url, params: { formulario_certo: { 20: @formulario_certo.20, data: @formulario_certo.data, departamento: @formulario_certo.departamento, desenho_peca: @formulario_certo.desenho_peca, estado: @formulario_certo.estado, ferramentas_proprias: @formulario_certo.ferramentas_proprias, maquina: @formulario_certo.maquina, material: @formulario_certo.material, nome_projeto: @formulario_certo.nome_projeto, orientador: @formulario_certo.orientador, tipo_projeto_string: @formulario_certo.tipo_projeto_string } }
    end

    assert_redirected_to formulario_certo_url(FormularioCerto.last)
  end

  test "should show formulario_certo" do
    get formulario_certo_url(@formulario_certo)
    assert_response :success
  end

  test "should get edit" do
    get edit_formulario_certo_url(@formulario_certo)
    assert_response :success
  end

  test "should update formulario_certo" do
    patch formulario_certo_url(@formulario_certo), params: { formulario_certo: { 20: @formulario_certo.20, data: @formulario_certo.data, departamento: @formulario_certo.departamento, desenho_peca: @formulario_certo.desenho_peca, estado: @formulario_certo.estado, ferramentas_proprias: @formulario_certo.ferramentas_proprias, maquina: @formulario_certo.maquina, material: @formulario_certo.material, nome_projeto: @formulario_certo.nome_projeto, orientador: @formulario_certo.orientador, tipo_projeto_string: @formulario_certo.tipo_projeto_string } }
    assert_redirected_to formulario_certo_url(@formulario_certo)
  end

  test "should destroy formulario_certo" do
    assert_difference('FormularioCerto.count', -1) do
      delete formulario_certo_url(@formulario_certo)
    end

    assert_redirected_to formulario_certos_url
  end
end
