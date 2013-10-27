class CreatePreguntas < ActiveRecord::Migration
  def change
    create_table :preguntas do |t|
      t.string :denominacion

      t.timestamps
    end
  end
end
