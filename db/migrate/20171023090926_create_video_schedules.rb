class CreateVideoSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :video_schedules do |t|
      t.integer :video_id
      t.datetime :start
      t.datetime :end
      t.integer :theater_hall_id

      t.timestamps
    end
  end
end
