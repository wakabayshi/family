class CreateDays < ActiveRecord::Migration[5.2]
  def change
    create_table :days do |t|
      t.references :period
      t.date :date
      

      t.timestamps
    end
  end
end
