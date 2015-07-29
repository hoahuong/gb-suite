class CreateDayTypes < ActiveRecord::Migration
  def change
    create_table :day_types do |t|
      t.string :code
      t.string :name
      t.integer :company_id
      t.string :description
      t.time :start_at
      t.time :end_at
      t.float  :hours
      t.boolean :is_holiday
      t.float :rate
      t.datetime :created_at
      t.integer :created_by
      t.datetime :updated_at
      t.integer :updated_by
      t.string :active
    end
  end
end
