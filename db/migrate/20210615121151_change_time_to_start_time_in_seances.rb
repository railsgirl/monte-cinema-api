class ChangeTimeToStartTimeInSeances < ActiveRecord::Migration[6.1]
  def change
    rename_column :seances, :time, :start_time
  end
end
