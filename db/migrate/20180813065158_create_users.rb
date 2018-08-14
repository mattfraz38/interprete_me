class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.text :bio
      t.string :gender
      t.text :languages
      t.string :availability

      t.timestamps
    end
  end
end
