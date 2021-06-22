class AddOnlineToTicketDesks < ActiveRecord::Migration[6.1]
  def change
    add_column :ticket_desks, :online, :boolean
  end
end
