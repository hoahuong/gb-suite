class CreateMProjects < ActiveRecord::Migration
  def change
    create_table :m_projects do |t|
      t.string  :code
      t.string  :name
      t.integer :company_id
      t.integer :status
      t.date    :start_at
      t.date    :end_at
      t.string  :description
      t.string  :active
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
