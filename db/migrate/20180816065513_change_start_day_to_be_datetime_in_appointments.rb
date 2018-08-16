class ChangeStartDayToBeDatetimeInAppointments < ActiveRecord::Migration[5.2]
  def change
    change_column :appointments, :start_day, :datetime
  end
end
