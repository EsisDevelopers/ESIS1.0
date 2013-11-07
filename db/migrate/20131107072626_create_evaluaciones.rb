class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.integer :tema_id
      t.integer :encuesta_id
      t.string :contrato_id

      t.timestamps
    end
    add_index :evaluaciones, :tema_id
    add_index :evaluaciones, :encuesta_id
    add_index :evaluaciones, :contrato_id
  end
end
