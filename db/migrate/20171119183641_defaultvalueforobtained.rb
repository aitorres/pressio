class Defaultvalueforobtained < ActiveRecord::Migration[5.1]
  def change
    change_column :proyectos, :dinero_obtenido, :integer, :default => 0
    change_column :proyectos, :talentos, :string, :default => ""
  end
end
