class CreateLoveDays < ActiveRecord::Migration[5.2]
  def change
    create_table :love_days do |t|
      t.datetime :startday
      t.datetime :endday

      t.timestamps
    end
  end
end
