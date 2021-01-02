class CreatePeriods < ActiveRecord::Migration[5.2]
  def change
    create_table :periods do |t|
      t.string :time
      t.integer :maxnumber
      t.time :date

      t.timestamps
    end
  end
end
