class RemoveEndDateFromAppointments < ActiveRecord::Migration[5.2]
  def change
    remove_column :appointments, :end_day
  end
end
