class CreateTimesheetHistories < ActiveRecord::Migration
  def change
    create_table :timesheet_histories do |t|
      t.string    :timesheet_history
      t.integer   :timesheet_id
      t.integer   :actor_id
      t.integer   :action_id
      t.datetime  :action_at
      t.text      :message
      t.integer   :created_by
      t.integer   :updated_by
      t.string    :active

      t.timestamps
    end
  end
end
