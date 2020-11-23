class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :name
      t.integer :wins
      t.integer :draws
      t.integer :losses
      t.integer :gf
      t.integer :ga

      t.timestamps
    end
  end
end
