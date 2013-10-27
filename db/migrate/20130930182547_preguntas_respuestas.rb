class PreguntasRespuestas < ActiveRecord::Migration
  def change
	create_table :preguntas_respuestas, :id => false do |t|
		t.integer :pregunta_id
		t.integer :respuesta_id
	end
	add_index :preguntas_respuestas, [:pregunta_id, :respuesta_id]
  end
end


