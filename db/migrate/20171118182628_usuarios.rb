class Usuarios < ActiveRecord::Migration[5.0]
  def change
    change_table :usuarios do |t|
      ## Database authenticatable
      t.string :username 
      t.string :bio
      t.string :nombre
      t.string :apellido
      t.integer :edad
    end

    add_index :usuarios, :username, unique: true
    remove_column :usuarios, :usuario
  end
end