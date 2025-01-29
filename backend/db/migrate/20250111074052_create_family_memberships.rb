class CreateFamilyMemberships < ActiveRecord::Migration[6.1]
  def change
    create_table :family_memberships do |t|
      t.integer :user_id, null: false
      t.integer :family_id, null: false

      t.timestamps
    end

    add_index :family_memberships, [:user_id, :family_id], unique: true
    add_foreign_key :family_memberships, :users
    add_foreign_key :family_memberships, :families
  end
end
