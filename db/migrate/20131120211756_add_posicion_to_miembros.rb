class AddPosicionToMiembros < ActiveRecord::Migration
  def change
    add_column :miembros, :posicion, :integer
  end
end
