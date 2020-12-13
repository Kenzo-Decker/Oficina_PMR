require 'test_helper'

class ReservasCertosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reservas_certo = reservas_certos(:one)
  end

  test "should get index" do
    get reservas_certos_url
    assert_response :success
  end

  test "should get new" do
    get new_reservas_certo_url
    assert_response :success
  end

  test "should create reservas_certo" do
    assert_difference('ReservasCerto.count') do
      post reservas_certos_url, params: { reservas_certo: { ativa: @reservas_certo.ativa, fields: @reservas_certo.fields, formulario_id: @reservas_certo.formulario_id, maquina_id: @reservas_certo.maquina_id, tecnico: @reservas_certo.tecnico, user_id: @reservas_certo.user_id } }
    end

    assert_redirected_to reservas_certo_url(ReservasCerto.last)
  end

  test "should show reservas_certo" do
    get reservas_certo_url(@reservas_certo)
    assert_response :success
  end

  test "should get edit" do
    get edit_reservas_certo_url(@reservas_certo)
    assert_response :success
  end

  test "should update reservas_certo" do
    patch reservas_certo_url(@reservas_certo), params: { reservas_certo: { ativa: @reservas_certo.ativa, fields: @reservas_certo.fields, formulario_id: @reservas_certo.formulario_id, maquina_id: @reservas_certo.maquina_id, tecnico: @reservas_certo.tecnico, user_id: @reservas_certo.user_id } }
    assert_redirected_to reservas_certo_url(@reservas_certo)
  end

  test "should destroy reservas_certo" do
    assert_difference('ReservasCerto.count', -1) do
      delete reservas_certo_url(@reservas_certo)
    end

    assert_redirected_to reservas_certos_url
  end
end
