class CreateTalentos < ActiveRecord::Migration[5.1]
  def change
    create_table :talentos do |t|
      t.integer :usuario
      t.integer :campana
      t.string :talento

      t.timestamps
    end
  end
end
