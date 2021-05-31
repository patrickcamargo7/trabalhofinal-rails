class CreateAwards < ActiveRecord::Migration[6.1]
  def change
    create_table :awards do |t|
      t.belongs_to :raffle, null: false, foreign_key: true
      t.string :description
      t.integer :position
      t.belongs_to :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end
