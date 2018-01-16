class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :event_date
      t.string :event_time
      t.string :string
      t.text :description
      t.boolean :has_lunch

      t.timestamps
    end
  end
end
