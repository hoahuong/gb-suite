class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :code
      t.string :name
      t.integer :company_id
      t.integer :status
      t.date :start_at
      t.date :end_at
      t.string :description
      t.datetime :created_at
      t.integer :created_by
      t.datetime :updated_at
      t.integer :updated_by
      t.string :active
    end
  end
end
