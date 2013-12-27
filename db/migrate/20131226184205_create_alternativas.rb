class CreateAlternativas < ActiveRecord::Migration
  def change
    create_table :alternativas do |t|
      t.string :nombre
      t.integer :tipo_encuesta_id

      t.timestamps
    end
    add_index :alternativas, :tipo_encuesta_id
  end
end
