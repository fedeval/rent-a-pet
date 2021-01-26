class CreatePets < ActiveRecord::Migration[6.0]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.text :description
      t.float :price_per_day
      t.string :location
      t.boolean :available

      t.timestamps
    end
  end
end
