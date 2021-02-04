class AddInfoToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :info, :text
  end
end
