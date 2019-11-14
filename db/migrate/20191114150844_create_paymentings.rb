class CreatePaymentings < ActiveRecord::Migration[6.0]
  def change
    create_table :paymentings do |t|
      t.string :description
      t.float :value

      t.timestamps
    end
  end
end
