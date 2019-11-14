class AddColumnKindToRegistries < ActiveRecord::Migration[6.0]
  def change
    add_column :registries, :kind, :string
  end
end
