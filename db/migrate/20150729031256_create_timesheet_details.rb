class CreateTimesheetDetails < ActiveRecord::Migration
  def change
    create_table :table_timesheet_details do |t|
      t.integer :timesheet_id
      t.integer :day_type_id
      t.time    :start_at
      t.time    :end_at
      t.integer :small_leave
      t.integer :recovery_small_leave
      t.integer :regular_time
      t.integer :overtime
      t.integer :midnight
      t.integer :created_by
      t.integer :updated_by
      t.string  :active

      t.timestamps
    end
  end
end
