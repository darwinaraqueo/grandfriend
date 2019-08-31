class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.string :code_visit
      t.integer :calcification
      t.string :status
      t.datetime :date
      
      t.references :grand_friend
      t.references :user

      t.timestamps
    end
  end
end
