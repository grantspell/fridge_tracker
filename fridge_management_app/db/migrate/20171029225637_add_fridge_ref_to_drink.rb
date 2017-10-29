class AddFridgeRefToDrink < ActiveRecord::Migration[5.1]
  def change
    add_reference :drinks, :fridge, foreign_key: true
  end
end
