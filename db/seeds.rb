# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#usuarios
User.create!(nombre: 'Supervisor1', email: 'supervisor1@example.com', password: 'password', tipo_usuario: 'supervisor')
User.create!(nombre: 'Conductor1', email: 'conductor1@example.com', password: 'password', tipo_usuario: 'conductor')

#vehiculos
Vehiculo.create!(placa: 'ABC124', modelo: 'Camión')
Vehiculo.create!(placa: 'DEF456', modelo: 'Camión')

#tipos de carga
tipo_carga1 = TipoCarga.create!(nombre: 'Carga Pesada', descripcion: 'Para mercancías pesadas')
tipo_carga2 = TipoCarga.create!(nombre: 'Carga Liviana', descripcion: 'Para mercancías ligeras')