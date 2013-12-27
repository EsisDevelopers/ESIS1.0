class CreateEncuestas < ActiveRecord::Migration
  def change
    create_table :encuestas do |t|
      t.integer :tema_id
      t.integer :contrato_id

      t.timestamps
    end
    add_index :encuestas, :tema_id
    add_index :encuestas, :contrato_id
  end
end
