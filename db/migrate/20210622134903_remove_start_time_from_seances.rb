class RemoveStartTimeFromSeances < ActiveRecord::Migration[6.1]
  def change
    remove_column :seances, :start_time, :time
  end
end
