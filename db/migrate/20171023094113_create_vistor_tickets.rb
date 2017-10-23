class CreateVistorTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :vistor_tickets do |t|
      t.integer, :user_id
      t.integer, :video_schedule_id
      t.string :bar_code

      t.timestamps
    end
  end
end
