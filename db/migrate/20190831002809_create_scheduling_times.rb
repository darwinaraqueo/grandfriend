class CreateSchedulingTimes < ActiveRecord::Migration[5.1]
  def change
    create_table :scheduling_times do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :day

      t.references :grand_friend

      t.timestamps
    end
  end
end
