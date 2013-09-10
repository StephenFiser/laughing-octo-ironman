class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.integer :composite_id
      t.integer :member_id

      t.timestamps
    end
  end
end
