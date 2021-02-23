class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :starting_date
      t.date :ending_date
      t.boolean :confirmed, default: false
      t.references :user, null: false, foreign_key: true
      t.references :space, null: false, foreign_key: true

      t.timestamps
    end
  end
end
