class CreateActions < ActiveRecord::Migration
  def change
    create_table :actions do |t|
      t.string :code
      t.string :name
      t.datetime :created_at
      t.integer :created_by
      t.datetime :updated_at
      t.integer :updated_by
      t.string :active
    end
  end
end
