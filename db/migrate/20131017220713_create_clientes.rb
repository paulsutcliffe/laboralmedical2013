class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :logo
      t.string :link

      t.timestamps
    end
  end
end
