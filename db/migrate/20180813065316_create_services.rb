class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :description
      t.integer :price
      t.string :location
      t.references :user, foreign_key: true
      t.string :language

      t.timestamps
    end
  end
end
