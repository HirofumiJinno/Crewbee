class CreateBoatUses < ActiveRecord::Migration[6.0]
  def change
    create_table :boat_uses do |t|
      t.references :practice, null: false, foreign_key: true
      t.references :boat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
