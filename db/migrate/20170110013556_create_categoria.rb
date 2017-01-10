class CreateCategoria < ActiveRecord::Migration
  def change
        create_table :categorias do |t|
      t.text     :nombre
      t.string   :descripcion
          t.string :slug
      t.timestamps null: false
    end
  end
end