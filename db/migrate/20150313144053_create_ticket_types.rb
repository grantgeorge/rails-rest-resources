class CreateTicketTypes < ActiveRecord::Migration
  def change
    create_table :ticket_types do |t|
      t.string :name
      t.integer :quantity
      t.integer :price
      t.integer :number_of_registrations
      t.references :event, index: true

      t.timestamps null: false
    end
    add_foreign_key :ticket_types, :events
  end
end
