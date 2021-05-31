class CreateTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :types do |t|
      t.string :description
      t.integer :initial_number
      t.integer :amount
      t.integer :step

      t.timestamps
    end
  end
end
