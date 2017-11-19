class Intabool < ActiveRecord::Migration[5.1]
  def change
    remove_column :proyectos, :solicita_dinero
    remove_column :proyectos, :solicita_talentos

    change_table :proyectos do |t|
      ## Database authenticatable
      t.boolean :solicita_talentos
      t.boolean :solicita_dinero
      t.string :talentos
      t.integer :dinero
    end

  end
end
