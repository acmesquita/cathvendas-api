class CreateCashes < ActiveRecord::Migration[6.0]
  def change
    create_table :cashes do |t|

      t.timestamps
    end
  end
end
