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
class Trayecto < ApplicationRecord
  #relaciones

  belongs_to :tipo_carga
  belongs_to :vehiculo
  belongs_to :user

  #validaciones
  #validaciones
validates :descripcion, :tipo_carga_id, :destino, :fecha_salida, :fecha_llegada, :vehiculo_id, :user, presence: true
validates :fecha_llegada, comparison: {greater_than: :fecha_salida, message: "La fecha de llegada no puede ser antes de la fecha de salida"}
end
