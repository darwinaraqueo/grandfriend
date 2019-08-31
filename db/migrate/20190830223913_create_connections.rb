class CreateConnections < ActiveRecord::Migration[5.1]
  def change
    create_table :connections do |t|

      t.references :user
      t.references :grand_friend

      t.timestamps
    end
  end
end
