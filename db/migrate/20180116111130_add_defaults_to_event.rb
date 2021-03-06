class AddDefaultsToEvent < ActiveRecord::Migration[5.1]
  def change
    change_column_default(:events, :price, 0)
    change_column_default(:events, :active, true )
    change_column_default(:events, :includes_foods, false)
    change_column_default(:events, :includes_drinks, false)
  end
end
