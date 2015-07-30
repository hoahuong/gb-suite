class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|
      t.integer :user_id
      t.integer :project_id
      t.date    :report_month
      t.integer :status
      t.integer :created_by
      t.integer :updated_by
      t.string  :active

      t.timestamps
    end
  end
end
