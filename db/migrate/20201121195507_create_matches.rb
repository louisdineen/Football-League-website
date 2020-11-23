class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.string :home
      t.string :away
      t.string :time

      t.timestamps
    end
  end
end
