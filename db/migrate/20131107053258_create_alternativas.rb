class CreateAlternativas < ActiveRecord::Migration
  def change
    create_table :alternativas do |t|
      t.string :opcion

      t.timestamps
    end
  end
end
