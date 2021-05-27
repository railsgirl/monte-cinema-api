class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.references :seance, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.references :ticket_desk, null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
