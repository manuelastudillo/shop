class CreateMarcas < ActiveRecord::Migration
  def change
    create_table :marcas do |t|
    	
    t.string :nombre
    t.string :descripcion
    t.string :slug
    t.timestamps null: false

    end
  end
end
