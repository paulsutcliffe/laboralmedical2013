class CreateBanners < ActiveRecord::Migration
  def change
    create_table :banners do |t|
      t.string :imagen
      t.string :encabezado
      t.string :link

      t.timestamps
    end
  end
end
