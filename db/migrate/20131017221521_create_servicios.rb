class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :nombre
      t.string :icono
      t.text :descripcion
      t.integer :categoria_id

      t.timestamps
    end
  end
end
