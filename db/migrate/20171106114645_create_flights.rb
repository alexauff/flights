class CreateFlights < ActiveRecord::Migration[5.1]
  def change
    create_table :flights do |t|
      t.integer :duration
      t.date :departure_date
      t.references :arrival_airport, foreign_key: {to_table: :airports}
      t.references :departure_airport, foreign_key: {to_table: :airports}

      t.timestamps
    end
  end
end
