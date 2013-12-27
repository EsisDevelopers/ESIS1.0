class CreateDetalleEncuestas < ActiveRecord::Migration
  def change
    create_table :detalle_encuestas do |t|
      t.integer :pregunta_id
      t.integer :alternativa_id
      t.integer :encuesta_id

      t.timestamps
    end
    add_index :detalle_encuestas, :pregunta_id
    add_index :detalle_encuestas, :alternativa_id
    add_index :detalle_encuestas, :encuesta_id
  end
end
