class CreateMDayTypes < ActiveRecord::Migration
  def change
    create_table :m_day_types do |t|
      t.string  :code
      t.string  :name
      t.integer :company_id
      t.string  :description
      t.time    :start_at
      t.time    :end_at
      t.float   :hours
      t.boolean :is_holiday
      t.float   :rate
      t.string  :active
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
