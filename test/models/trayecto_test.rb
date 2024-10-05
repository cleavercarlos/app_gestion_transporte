# == Schema Information
#
# Table name: trayectos
#
#  id            :bigint           not null, primary key
#  descripcion   :text
#  tipo_carga_id :bigint           not null
#  destino       :string
#  fecha_salida  :date
#  fecha_llegada :date
#  vehiculo_id   :bigint           not null
#  user_id       :bigint           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#
require "test_helper"

class TrayectoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
