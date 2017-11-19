class ExtenderCampanas < ActiveRecord::Migration[5.1]
  def change
    change_table :proyectos do |t|
      ## Database authenticatable
      t.integer :dinero_obtenido
  end
  end
end
