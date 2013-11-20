class AddPosicionToAlianzas < ActiveRecord::Migration
  def change
    add_column :alianzas, :posicion, :integer
  end
end
