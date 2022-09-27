class AddMiningTypeToCoins < ActiveRecord::Migration[7.0]
  def change
    add_reference :coins, :mining_type, null: true, foreign_key: true
  end
end
