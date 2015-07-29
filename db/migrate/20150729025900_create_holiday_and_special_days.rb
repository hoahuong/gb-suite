class CreateHolidayAndSpecialDays < ActiveRecord::Migration
  def change
    create_table :holiday_and_special_days do |t|
      t.string :code
      t.string :name
      t.integer :day_type
      t.boolean :is_static_day
      t.date :day
      t.string :description
      t.datetime :created_at
      t.integer :created_by
      t.datetime :updated_at
      t.integer :updated_by
      t.string :active
    end
  end
end
