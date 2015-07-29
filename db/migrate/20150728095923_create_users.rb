class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id
      t.integer :company_id
      t.string :name, limit: 100
      t.integer :is_accountant
      t.string :email, limit: 100
      t.string :user_name, limit: 100
      t.string :password, limit: 100
      t.integer :salt
      t.integer :is_admin
      t.datetime :create_at
      t.integer :create_by
      t.datetime :update_at
      t.integer :update_by
      t.integer :active

      t.timestamps null: false
    end
  end
end
