class AddCashToPaymenting < ActiveRecord::Migration[6.0]
  def change
    add_reference :paymentings, :cash, index: true
  end
end
