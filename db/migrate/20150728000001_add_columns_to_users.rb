class AddColumnsToUsers < ActiveRecord::Migration
  def self.up
    ## Database authenticatable
    add_column :users, :email, :string, null: false
    add_column :users, :encrypted_password, :string, null: false

    ## Recoverable
    add_column :users, :reset_password_token, :string
    add_column :users, :reset_password_sent_at, :datetime

    ## Rememberable
    add_column :users, :remember_created_at, :datetime

     ## Trackable
     add_column :users, :sign_in_count, :integer, default: 0, null: false
     add_column :users, :current_sign_in_at, :datetime
     add_column :users, :last_sign_in_at, :datetime
     add_column :users, :current_sign_in_ip, :string
     add_column :users, :last_sign_in_ip, :string

     add_index :users, :email,                unique: true
     add_index :users, :reset_password_token, unique: true
  end

  def self.down
    # By default, we don't want to make any assumption about how to roll back a migration when your
    # model already existed. Please edit below which fields you would like to remove in this migration.
    raise ActiveRecord::IrreversibleMigration
  end
end
