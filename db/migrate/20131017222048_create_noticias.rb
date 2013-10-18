class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.string :subtitulo
      t.string :imagen
      t.text :contenido
      t.string :slug

      t.timestamps
    end
  end
end
