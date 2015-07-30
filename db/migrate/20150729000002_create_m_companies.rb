class CreateMCompanies < ActiveRecord::Migration
  def change
    create_table :m_companies do |t|
      t.string  :code
      t.string  :name
      t.text    :note
      t.integer :created_by
      t.integer :updated_by

      t.timestamps
    end
  end
end
