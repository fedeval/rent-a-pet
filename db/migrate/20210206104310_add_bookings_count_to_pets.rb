class AddBookingsCountToPets < ActiveRecord::Migration[6.0]
  def change
    add_column :pets, :bookings_count, :integer
  end
end
