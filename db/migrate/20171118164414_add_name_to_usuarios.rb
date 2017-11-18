class AddNameToUsuarios < ActiveRecord::Migration[5.1]
  def change
    add_column :usuarios, :usuario, :string
  end
end
