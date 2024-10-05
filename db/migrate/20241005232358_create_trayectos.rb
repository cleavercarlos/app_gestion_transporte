class CreateTrayectos < ActiveRecord::Migration[7.2]
  def change
    create_table :trayectos do |t|
      t.text :descripcion
      t.references :tipo_carga, null: false, foreign_key: true
      t.string :destino
      t.date :fecha_salida
      t.date :fecha_llegada
      t.references :vehiculo, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
