class AddCompanyToCashes < ActiveRecord::Migration[6.0]
  def change
    add_reference :cashes, :company, index: true
  end
end
