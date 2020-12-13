require "application_system_test_case"

class FormularioCertosTest < ApplicationSystemTestCase
  setup do
    @formulario_certo = formulario_certos(:one)
  end

  test "visiting the index" do
    visit formulario_certos_url
    assert_selector "h1", text: "Formulario Certos"
  end

  test "creating a Formulario certo" do
    visit formulario_certos_url
    click_on "New Formulario Certo"

    fill_in "20", with: @formulario_certo.20
    fill_in "Data", with: @formulario_certo.data
    fill_in "Departamento", with: @formulario_certo.departamento
    fill_in "Desenho peca", with: @formulario_certo.desenho_peca
    fill_in "Estado", with: @formulario_certo.estado
    fill_in "Ferramentas proprias", with: @formulario_certo.ferramentas_proprias
    fill_in "Maquina", with: @formulario_certo.maquina
    fill_in "Material", with: @formulario_certo.material
    fill_in "Nome projeto", with: @formulario_certo.nome_projeto
    fill_in "Orientador", with: @formulario_certo.orientador
    fill_in "Tipo projeto string", with: @formulario_certo.tipo_projeto_string
    click_on "Create Formulario certo"

    assert_text "Formulario certo was successfully created"
    click_on "Back"
  end

  test "updating a Formulario certo" do
    visit formulario_certos_url
    click_on "Edit", match: :first

    fill_in "20", with: @formulario_certo.20
    fill_in "Data", with: @formulario_certo.data
    fill_in "Departamento", with: @formulario_certo.departamento
    fill_in "Desenho peca", with: @formulario_certo.desenho_peca
    fill_in "Estado", with: @formulario_certo.estado
    fill_in "Ferramentas proprias", with: @formulario_certo.ferramentas_proprias
    fill_in "Maquina", with: @formulario_certo.maquina
    fill_in "Material", with: @formulario_certo.material
    fill_in "Nome projeto", with: @formulario_certo.nome_projeto
    fill_in "Orientador", with: @formulario_certo.orientador
    fill_in "Tipo projeto string", with: @formulario_certo.tipo_projeto_string
    click_on "Update Formulario certo"

    assert_text "Formulario certo was successfully updated"
    click_on "Back"
  end

  test "destroying a Formulario certo" do
    visit formulario_certos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Formulario certo was successfully destroyed"
  end
end
