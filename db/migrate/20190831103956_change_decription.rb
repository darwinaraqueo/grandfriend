class ChangeDecription < ActiveRecord::Migration[5.1]
  def change
    rename_column :curriculum_vitaes, :decription, :description
  end
end
