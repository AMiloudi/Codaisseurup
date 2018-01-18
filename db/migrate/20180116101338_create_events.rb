class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :string
      t.text :description
      t.boolean :has_lunch
      t.string :location
      t.decimal :price
      t.integer :capacity
      t.boolean :includes_foods
      t.boolean :includes_drinks
      t.datetime :starts_at
      t.datetime :ends_at
      t.boolean :active

      t.timestamps
    end
  end
end
