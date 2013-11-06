class CreateAlianzas < ActiveRecord::Migration
  def change
    create_table :alianzas do |t|
      t.string :nombre
      t.string :logo

      t.timestamps
    end
  end
end
