class AddColumnUserBackground < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :background, :text
  end
end
