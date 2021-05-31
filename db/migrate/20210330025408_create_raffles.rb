class CreateRaffles < ActiveRecord::Migration[6.1]
  def change
    create_table :raffles do |t|
      t.string :title
      t.string :description
      t.date :raffle_date
      t.date :init_date
      t.date :final_date
      t.float :value

      t.timestamps
    end
  end
end
