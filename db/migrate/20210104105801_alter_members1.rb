class AlterMembers1 < ActiveRecord::Migration[5.2]
  def change
    add_column :accounts, :password_digest, :string
    add_column :doctors, :password_digest, :string
    # add_column :admins, :password_digest, :string
  end
end
