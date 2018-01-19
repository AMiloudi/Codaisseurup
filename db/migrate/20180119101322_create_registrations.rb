class CreateRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :registrations do |t|
      t.references :event, foreign_key: true
      t.references :user, foreign_key: true
      t.integer :guests_count
      t.string :status

      t.timestamps
    end
  end
end
