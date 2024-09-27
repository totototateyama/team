class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|

      t.integer :status_id, null: false
      t.date :match_day, null: false
      t.integer :match_week_id, null: false
      t.string :opponent, null: false
      t.string :location, null: false
      t.integer :start_time, null: false
      t.integer :meeting_time, null: false
      t.date :deadline, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
