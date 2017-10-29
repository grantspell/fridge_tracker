class AddFridgeRefToFood < ActiveRecord::Migration[5.1]
  def change
    add_reference :foods, :fridge, foreign_key: true
  end
end
