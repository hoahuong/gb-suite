class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.string :code, limit: 10
      t.string :name, limit: 100
      t.integer :company_id
      t.string :is_assountant, limit: 1
      t.date :create_at
      t.integer :create_by
      t.date :update_at
      t.integer :update_by
      t.string :active, limit: 1

      t.timestamps null: false
    end
  end
end
