class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.references :asylum
      t.string :name
      t.string :description
      t.integer :category
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
