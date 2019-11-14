class DropPaymenting < ActiveRecord::Migration[6.0]
  def change
    drop_table :paymentings
  end
end
