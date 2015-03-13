class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.integer :registration_cap
      t.boolean :walkins_enabled
      t.datetime :start
      t.datetime :end

      t.timestamps null: false
    end
  end
end
