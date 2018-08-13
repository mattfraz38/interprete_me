class AddTitleToServices < ActiveRecord::Migration[5.2]
  def change
    add_column :services, :title, :string
  end
end
