class CreateTheaterHalls < ActiveRecord::Migration[5.0]
  def change
    create_table :theater_halls do |t|
      t.string :hall_name
      t.integer :total_seats

      t.timestamps
    end
  end
end
