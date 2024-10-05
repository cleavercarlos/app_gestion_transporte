class CreateVehiculos < ActiveRecord::Migration[7.2]
  def change
    create_table :vehiculos do |t|
      t.string :placa
      t.string :modelo

      t.timestamps
    end
  end
end
