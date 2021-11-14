class CreateParticipations < ActiveRecord::Migration[6.0]
  def change
    create_table :participations do |t|
      t.references :rower, null: false, foreign_key: true
      t.references :practice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
