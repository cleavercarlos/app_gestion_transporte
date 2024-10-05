class Trayecto < ApplicationRecord
  belongs_to :tipo_carga
  belongs_to :vehiculo
  belongs_to :user
end
