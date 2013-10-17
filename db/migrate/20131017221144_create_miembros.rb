class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.string :puesto
      t.text :descripcion

      t.timestamps
    end
  end
end
