class CreateAlianzas < ActiveRecord::Migration
  def change
    create_table :alianzas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
