class CreatePractices < ActiveRecord::Migration[6.0]
  def change
    create_table :practices do |t|
      t.date :date
      t.time :starts_at
      t.time :ends_at

      t.timestamps
    end
  end
end
