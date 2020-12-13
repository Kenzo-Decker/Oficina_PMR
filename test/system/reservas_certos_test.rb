require "application_system_test_case"

class ReservasCertosTest < ApplicationSystemTestCase
  setup do
    @reservas_certo = reservas_certos(:one)
  end

  test "visiting the index" do
    visit reservas_certos_url
    assert_selector "h1", text: "Reservas Certos"
  end

  test "creating a Reservas certo" do
    visit reservas_certos_url
    click_on "New Reservas Certo"

    check "Ativa" if @reservas_certo.ativa
    fill_in "Fields", with: @reservas_certo.fields
    fill_in "Formulario", with: @reservas_certo.formulario_id
    fill_in "Maquina", with: @reservas_certo.maquina_id
    check "Tecnico" if @reservas_certo.tecnico
    fill_in "User", with: @reservas_certo.user_id
    click_on "Create Reservas certo"

    assert_text "Reservas certo was successfully created"
    click_on "Back"
  end

  test "updating a Reservas certo" do
    visit reservas_certos_url
    click_on "Edit", match: :first

    check "Ativa" if @reservas_certo.ativa
    fill_in "Fields", with: @reservas_certo.fields
    fill_in "Formulario", with: @reservas_certo.formulario_id
    fill_in "Maquina", with: @reservas_certo.maquina_id
    check "Tecnico" if @reservas_certo.tecnico
    fill_in "User", with: @reservas_certo.user_id
    click_on "Update Reservas certo"

    assert_text "Reservas certo was successfully updated"
    click_on "Back"
  end

  test "destroying a Reservas certo" do
    visit reservas_certos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reservas certo was successfully destroyed"
  end
end
