class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :project_id
      t.integer :user_id
      t.date    :start_at
      t.date    :end_at
      t.boolean :is_approver
      t.integer :created_by
      t.integer :updated_by
      t.string  :active

      t.timestamps
    end
  end
end
