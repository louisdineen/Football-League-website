class CreateResults < ActiveRecord::Migration[5.2]
  def change
    create_table :results do |t|
      t.string :home
      t.integer :hg
      t.integer :ag
      t.string :away
      t.string :time

      t.timestamps
    end
  end
end
