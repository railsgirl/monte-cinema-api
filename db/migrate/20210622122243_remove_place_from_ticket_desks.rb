class RemovePlaceFromTicketDesks < ActiveRecord::Migration[6.1]
  def change
    remove_column :ticket_desks, :place, :string
  end
end
