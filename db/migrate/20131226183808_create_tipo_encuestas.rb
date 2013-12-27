class CreateTipoEncuestas < ActiveRecord::Migration
  def change
    create_table :tipo_encuestas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
