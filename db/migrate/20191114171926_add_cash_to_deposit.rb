class AddCashToDeposit < ActiveRecord::Migration[6.0]
  def change
    add_reference :deposits, :cash, index: true
  end
end
