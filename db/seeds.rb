require 'faker'

# Usuarios base
User.create!(nombre: 'Supervisor1', email: 'supervisor1@example.com', password: 'password', tipo_usuario: 'supervisor')
User.create!(nombre: 'Conductor1', email: 'conductor1@example.com', password: 'password', tipo_usuario: 'conductor')

puts "Se han creado 2 usuarios base con éxito"

# Generar 6 usuarios aleatorios
6.times do 
  User.create!(
    nombre: Faker::Name.name,
    email: Faker::Internet.unique.email,
    password: 'password123', # Puedes cambiar la contraseña si quieres
    password_confirmation: 'password123',
    tipo_usuario: %w(conductor supervisor).sample # Selección al azar entre 'conductor' y 'supervisor'
  )
end

puts "Se han creado 6 usuarios aleatorios con éxito"

# Vehículos base
Vehiculo.create!(placa: 'ABC124', modelo: 'Camión')
Vehiculo.create!(placa: 'DEF456', modelo: 'Camión')

puts "Se han creado 2 vehículos base con éxito."

# Generar 20 vehículos aleatorios
20.times do
  Vehiculo.create!(
    placa: Faker::Vehicle.unique.license_plate,
    modelo: Faker::Vehicle.make_and_model
  )
end

puts "Se han creado 20 vehículos aleatorios con éxito."

# Tipos de carga base
tipo_carga1 = TipoCarga.create!(nombre: 'Carga Pesada', descripcion: 'Para mercancías pesadas')
tipo_carga2 = TipoCarga.create!(nombre: 'Carga Liviana', descripcion: 'Para mercancías ligeras')

puts "Se han creado 2 tipos de carga base con éxito."

# Generar 5 tipos de carga aleatorios
5.times do 
  TipoCarga.create!(
    nombre: Faker::Commerce.product_name, # Nombre aleatorio de un producto
    descripcion: Faker::Lorem.sentence(word_count: 5) # Descripción aleatoria de 5 palabras
  )
end

puts "Se han creado 5 tipos de carga aleatorios con éxito."

# Generar 50 trayectos aleatorios
50.times do
  Trayecto.create!(
    descripcion: Faker::Lorem.sentence(word_count: 10),
    tipo_carga: TipoCarga.all.sample, # Selecciona un tipo de carga al azar
    destino: Faker::Address.city,
    fecha_salida: Faker::Date.between(from: 10.days.ago, to: Date.today),
    fecha_llegada: Faker::Date.forward(days: 10),
    vehiculo: Vehiculo.all.sample, # Selecciona un vehículo al azar
    user: User.where(tipo_usuario: 'conductor').sample # Selecciona un conductor al azar
  )
end

puts "Se han creado 50 trayectos aleatorios con éxito."
