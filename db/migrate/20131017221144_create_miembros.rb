class CreateMiembros < ActiveRecord::Migration
  def change
    create_table :miembros do |t|
      t.string :nombre
      t.string :puesto
      t.string :foto
      t.text :descripcion

      t.timestamps
    end
  end
end
