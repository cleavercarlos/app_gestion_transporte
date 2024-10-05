require "application_system_test_case"

class TrayectosTest < ApplicationSystemTestCase
  setup do
    @trayecto = trayectos(:one)
  end

  test "visiting the index" do
    visit trayectos_url
    assert_selector "h1", text: "Trayectos"
  end

  test "should create trayecto" do
    visit trayectos_url
    click_on "New trayecto"

    fill_in "Descripcion", with: @trayecto.descripcion
    fill_in "Destino", with: @trayecto.destino
    fill_in "Fecha llegada", with: @trayecto.fecha_llegada
    fill_in "Fecha salida", with: @trayecto.fecha_salida
    fill_in "Tipo carga", with: @trayecto.tipo_carga_id
    fill_in "User", with: @trayecto.user_id
    fill_in "Vehiculo", with: @trayecto.vehiculo_id
    click_on "Create Trayecto"

    assert_text "Trayecto was successfully created"
    click_on "Back"
  end

  test "should update Trayecto" do
    visit trayecto_url(@trayecto)
    click_on "Edit this trayecto", match: :first

    fill_in "Descripcion", with: @trayecto.descripcion
    fill_in "Destino", with: @trayecto.destino
    fill_in "Fecha llegada", with: @trayecto.fecha_llegada
    fill_in "Fecha salida", with: @trayecto.fecha_salida
    fill_in "Tipo carga", with: @trayecto.tipo_carga_id
    fill_in "User", with: @trayecto.user_id
    fill_in "Vehiculo", with: @trayecto.vehiculo_id
    click_on "Update Trayecto"

    assert_text "Trayecto was successfully updated"
    click_on "Back"
  end

  test "should destroy Trayecto" do
    visit trayecto_url(@trayecto)
    click_on "Destroy this trayecto", match: :first

    assert_text "Trayecto was successfully destroyed"
  end
end
