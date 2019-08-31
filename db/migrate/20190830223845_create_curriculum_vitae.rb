class CreateCurriculumVitae < ActiveRecord::Migration[5.1]
  def change
    create_table :curriculum_vitaes do |t|
      t.string :first_name
      t.string :last_name
      t.integer :confidence_level
      t.string :picture
      t.text :decription

      t.references :user
      
      t.timestamps
    end
  end
end
