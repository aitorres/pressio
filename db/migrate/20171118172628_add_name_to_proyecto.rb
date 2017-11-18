class AddNameToProyecto < ActiveRecord::Migration[5.1]
  def change
    add_column :proyectos, :solicita_dinero, :string
    add_column :proyectos, :solicita_talentos, :string
  end
end
