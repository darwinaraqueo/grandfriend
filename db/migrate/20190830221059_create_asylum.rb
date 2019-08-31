class CreateAsylum < ActiveRecord::Migration[5.1]
  def change
    create_table :asylums do |t|
      t.string :name
      t.string :latitude
      t.string :longitude
      t.string :schedul

      t.timestamps
    end
  end
end
