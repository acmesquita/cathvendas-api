class AddColumnNameToCash < ActiveRecord::Migration[6.0]
  def change
    add_column :cashes, :name, :string
  end
end
