class RenameDeposit < ActiveRecord::Migration[6.0]
  def change
    rename_table :deposits, :registries
  end
end
