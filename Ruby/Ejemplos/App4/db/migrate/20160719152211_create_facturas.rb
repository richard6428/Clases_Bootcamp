class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.string :Nombres
      t.string :Apellido
      t.string :Cedula
      t.string :Producto
      t.string :Precio
      t.string :Iva
      t.integer :Descuento

      t.timestamps null: false
    end
  end
end
