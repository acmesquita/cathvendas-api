class CreateBalances < ActiveRecord::Migration[6.0]
  def change
    create_table :balances do |t|
      t.date :date_balance
      t.float :value_start
      t.float :value_end
      t.references :cash, null: false, foreign_key: true

      t.timestamps
    end
  end
end
