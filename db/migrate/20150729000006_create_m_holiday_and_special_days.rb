class CreateMHolidayAndSpecialDays < ActiveRecord::Migration
  def change
    create_table :m_holiday_and_special_days do |t|
      t.string  :code
      t.string  :name
      t.integer :day_type
      t.boolean :is_static_day
      t.date    :date
      t.string  :description
      t.integer :created_by
      t.integer :updated_by
      t.string  :active

      t.timestamps
    end
  end
end
