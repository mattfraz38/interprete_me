class AddConfirmedToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :confirmed, :boolean
  end
end
