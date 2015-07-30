class CreateMActions < ActiveRecord::Migration
  def change
    create_table :m_actions do |t|
      t.string  :code
      t.string  :name
      t.integer :created_by
      t.integer :updated_by
      t.string  :active

      t.timestamps
    end
  end
end
