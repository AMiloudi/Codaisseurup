class AddAttendeesToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :attendees, :string
  end
end
