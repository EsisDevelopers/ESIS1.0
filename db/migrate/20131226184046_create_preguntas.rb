class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :denominacion
      t.integer :tipo_encuesta_id

      t.timestamps
    end
    add_index :preguntas, :tipo_encuesta_id
  end
end
