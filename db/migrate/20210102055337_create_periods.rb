class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.references :doctor
      t.string :time
      t.integer :number
      t.integer :maxnumber
      t.date :date

      t.timestamps
    end
  end
end
