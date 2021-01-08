class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.references :account
      t.references :doctor
      t.string :symptom

      t.timestamps
    end
  end
end
