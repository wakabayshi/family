class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :account
      t.references :department
      t.references :period

      t.timestamps
    end
  end
end
