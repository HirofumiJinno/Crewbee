class CreateRowers < ActiveRecord::Migration[6.0]
  def change
    create_table :rowers do |t|
      t.string :name

      t.timestamps
    end
  end
end
