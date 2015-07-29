class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :project_id
      t.date :start_at
      t.date :end_at
      t.boolean :is_parrover
      t.datetime :created_at
      t.integer :created_by
      t.datetime :updated_at
      t.integer :updated_by
      t.string :active
    end
  end
end
