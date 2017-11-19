class CreateInversions < ActiveRecord::Migration[5.1]
  def change
    create_table :inversions do |t|
      t.integer :usuario
      t.integer :dinero
      t.integer :campana

      t.timestamps
    end
  end
end
