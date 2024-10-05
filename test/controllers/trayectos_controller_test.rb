require "test_helper"

class TrayectosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @trayecto = trayectos(:one)
  end

  test "should get index" do
    get trayectos_url
    assert_response :success
  end

  test "should get new" do
    get new_trayecto_url
    assert_response :success
  end

  test "should create trayecto" do
    assert_difference("Trayecto.count") do
      post trayectos_url, params: { trayecto: { descripcion: @trayecto.descripcion, destino: @trayecto.destino, fecha_llegada: @trayecto.fecha_llegada, fecha_salida: @trayecto.fecha_salida, tipo_carga_id: @trayecto.tipo_carga_id, user_id: @trayecto.user_id, vehiculo_id: @trayecto.vehiculo_id } }
    end

    assert_redirected_to trayecto_url(Trayecto.last)
  end

  test "should show trayecto" do
    get trayecto_url(@trayecto)
    assert_response :success
  end

  test "should get edit" do
    get edit_trayecto_url(@trayecto)
    assert_response :success
  end

  test "should update trayecto" do
    patch trayecto_url(@trayecto), params: { trayecto: { descripcion: @trayecto.descripcion, destino: @trayecto.destino, fecha_llegada: @trayecto.fecha_llegada, fecha_salida: @trayecto.fecha_salida, tipo_carga_id: @trayecto.tipo_carga_id, user_id: @trayecto.user_id, vehiculo_id: @trayecto.vehiculo_id } }
    assert_redirected_to trayecto_url(@trayecto)
  end

  test "should destroy trayecto" do
    assert_difference("Trayecto.count", -1) do
      delete trayecto_url(@trayecto)
    end

    assert_redirected_to trayectos_url
  end
end
