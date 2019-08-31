class CreateGrandFriend < ActiveRecord::Migration[5.1]
  def change
    create_table :grand_friends do |t|
      t.string :first_name
      t.string :last_name
      t.date :birthdate
      t.text :description
      t.text :intereses
      t.string :picture
      t.text :considerations
      t.boolean :block_visit
      
      t.timestamps
    end
  end
end
