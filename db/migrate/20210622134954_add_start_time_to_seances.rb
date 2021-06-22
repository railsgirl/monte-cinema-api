class AddStartTimeToSeances < ActiveRecord::Migration[6.1]
  def change
    add_column :seances, :start_time, :datetime
  end
end
