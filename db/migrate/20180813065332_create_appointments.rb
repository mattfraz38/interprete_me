class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :service, foreign_key: true
      t.date :start_day
      t.date :end_day

      t.timestamps
    end
  end
end
