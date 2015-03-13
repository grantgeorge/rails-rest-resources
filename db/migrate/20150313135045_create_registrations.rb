class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :walk_in
      t.boolean :check_in
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :registrations, :events
  end
end
