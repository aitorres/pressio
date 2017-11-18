class CreateProyectos < ActiveRecord::Migration[5.1]
  def change
    create_table :proyectos do |t|
      t.string :nombre
      t.integer :autor
      t.string :slug
      t.string :sinopsis
      t.string :descripcion

      t.timestamps
    end
  end
end
